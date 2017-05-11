-- HandyHands. Factorio mod: Automatically start handcrafting 1 item that is filtered in your quickbar whenever your crafting queue is empty. Prioritises items in your hand. It's like logistics slots for early game!
-- Copyright (C) 2016  Qon

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>

local mod_name = 'HandyHands'

local debugging = false

local max_arr = {0, .2, .5, .8, 1, 2, 3, 4}

-- If we complete an autostarted craft then mark it as done so that the next
-- crafting queue size check knows it wasn't because the player canceled it.
script.on_event(defines.events.on_player_crafted_item, function(event)
    local p = game.players[event.player_index]
    local data = global.players_data[event.player_index]
    if data.current_job == event.item_stack.name then
        data.current_job = nil
    end
    global.players_data[event.player_index] = data
end)

-- Init all new joining players.
script.on_event(defines.events.on_player_joined_game, function(event)
    local p = game.players[event.player_index]
    if debugging then p.print('joined!') end
    local data = global.players_data[event.player_index]
    if data == nil then
        data = init_player(event.player_index)
    end
    global.players_data[event.player_index] = data
end)

-- The mod core logic
script.on_event(defines.events.on_tick, function(event)
    function get_itemslots_iter(p)
        local qb = p.get_quickbar()
        local ab = p.get_inventory(defines.inventory.player_ammo)
        -- List is an iterator over all items that are candidates for autocrafting.
        -- qb: The quickbar items. We filter away items which are not "filtered" (blue item lock on quickbar) and pick the "filter" instead of the item stack.
        local list = {[1] = list_iter_filt_map(qb, function(q,i,a) return a.get_filter(i) ~= nil end, function(q,i,a) return a.get_filter(i) end)}
        if p.character then
            -- ab: ammo bar. All non-empty stacks are autocrafting candidates.
            list[2] = list_iter_filt_map(ab, function(q,i,a) return q.valid_for_read end,       function(q,i,a) return q.name end)
        end
        return iterlist_iter(list)
    end
    function cache_refresh(player_index)
        local p = game.players[player_index]
        -- local data = global.players_data[player_index]
        local cache = global.players_cache[player_index]
        cache = cache or {}
        -- clear the requests cache
        cache.requests = {}
        local cs = p.cursor_stack
        for item in get_itemslots_iter(p) do
            cache.requests[item] = true
        end
        -- global.players_data[player_index] = data
        global.players_cache[player_index] = cache
    end
    -- Handle 1/181 of the players each tick.
    for i = 1 + game.tick % 181, #game.players, 181 do
        local p = game.players[i]
        if p.connected then
            cache_refresh(i)
        end
    end
    -- Handle 1/5 of the players each tick.
    for i = 1 + game.tick % 5, #game.players, 5 do
        local p = game.players[i]
        if p.connected then
            local data = global.players_data[i]
            local cache = global.players_cache[i] or {requests = {}}
            local canceled_autocraft = false
            if data.current_job ~= nil and p.crafting_queue_size > 0 then
                if data.current_job ~= p.crafting_queue[#p.crafting_queue].recipe or p.crafting_queue[#p.crafting_queue].count > 1 then
                    -- If anything has been manualy added to the crafting queue then it's not our business any more so stop checking if we have canceled crafts
                    data.current_job = nil
                elseif p.crafting_queue[data.current_job] ~= nil and p.crafting_queue[data.current_job].recipe == nil then
                    canceled_autocraft = true
                    data.paused = true
                end
            end
            -- If not crafting: Step 1 is to find most needed item.
            if p.crafting_queue_size == 0 then
                -- init_player(i, false)
                if data.current_job ~= nil then
                    -- Pause because the player canceled the somethin that was added by HH.
                    canceled_autocraft = true
                    data.paused = true
                end
                if data.paused ~= true then
                    local filter = nil
                    local count_filter = nil
                    local max_filter = nil
                    local cs = p.cursor_stack
                    for item in  get_itemslots_iter(p) do
                        -- Check that we can craft this item. If not, skip.
                        if p.force.recipes[item] ~= nil and ((p.get_craftable_count(item) > 0  and p.force.recipes[item].enabled == true) or p.cheat_mode) then
                            local prio_filter = 1
                            local ci = p.get_item_count(item)
                            local setting = data.settings[item]
                            if setting == nil then
                                setting = data.settings['Default']
                                if setting == nil then
                                    p.print(mod_name..' Error: Uninitialised Default setting.')
                                end
                            end
                            local stsz = game.item_prototypes[item].stack_size
                            -- For better interaction with stack size changing mods: Pretend that the max stack size is only 1/10 as big.
                            if stsz >= 500 then
                                stsz = stsz / 10
                            end
                            mi = math.ceil(stsz*setting)
                            -- Don't keep autocrafting this item if it will just end up in logistics trash slots.
                            if p.character and p.auto_trash_filters[item] then
                                mi = math.min(mi, p.auto_trash_filters[item])
                            end
                            if filter ~= nil then
                                prio_filter = count_filter/max_filter
                            end
                            -- prio is a bit backwards. Lower prio numbers for high priority items.
                            local prio_current = p.get_item_count(item)/mi
                            local item_held = cs.valid_for_read and cs.name == item
                            -- Prioritise items held in cursor above all. Prioritise less fulfilled autocraft requests.
                            local prioritised = prio_current < prio_filter or item_held
                            -- Check that we can craft the item
                            if prio_current < 1 and prioritised then
                                filter = item
                                count_filter = ci
                                max_filter = mi
                                if cs.valid_for_read and cs.name == item then
                                    break
                                end
                            end
                        end
                    end
                    -- "filter" here is our chosen item to craft.
                    if filter ~= nil then
                        if p.cheat_mode == false then
                            p.begin_crafting{count=1, recipe=filter, silent=true}
                            data.current_job = filter
                        else
                            p.begin_crafting{count=(max_filter-count_filter), recipe=filter, silent=true}
                        end
                    end
                end
            end
            if canceled_autocraft then
                p.print(mod_name..' is now paused until you hit increase or decrease key (Options > Controls > Mods).')
                data.current_job = nil
            end
            global.players_data[i] = data
        end
    end
end)

-- Handle hotkey presses.
script.on_event('handyhands-increase', function(event) change(event, true) end)
script.on_event('handyhands-decrease', function(event) change(event, false) end)

function change(event, positive)
    local p = game.players[event.player_index]
    -- init_player(event.player_index, false)
    local data = global.players_data[event.player_index]
    if data.paused == true then
        data.paused = false
        p.print(mod_name..' is now running again!')
        global.players_data[event.player_index] = data
        return
    end
    local item = 'Default'
    if p.cursor_stack.valid_for_read == true then
        item = p.cursor_stack.name
        if data.settings[item] == nil then
            data.settings[item] = data.settings['Default']
        end
    end
    local changed = false
    if positive then
        for i = 1, #max_arr do
            if max_arr[i] > data.settings[item] then
                data.settings[item] = max_arr[i]
                changed = true
                break
            end
        end
    else
        for i = 1, #max_arr do
            if max_arr[#max_arr-i+1] < data.settings[item] then
                data.settings[item] = max_arr[#max_arr-i+1]
                changed = true
                break
            end
        end
    end
    if changed then
        if item == 'Default' then
            p.print('Changed default autocraft stack size.')
            for k in pairs(data.settings) do
                if k ~= 'Default' then
                    local trash_warning = ''
                    if p.character and p.auto_trash_filters[k] ~= nil and p.auto_trash_filters[k] < math.ceil(game.item_prototypes[k].stack_size*data.settings[k]) then
                        trash_warning = ' [Auto trash: '..p.auto_trash_filters[k]..']'
                    end
                    p.print(k..': '..data.settings[k]..' stacks ('..math.ceil(game.item_prototypes[k].stack_size*data.settings[k])..' items)'..trash_warning)
                end
            end
            p.print('Default'..': '..data.settings['Default']..' stacks.')
        else
            local trash_warning = ''
            if p.character and p.auto_trash_filters[item] ~= nil and p.auto_trash_filters[item] < math.ceil(game.item_prototypes[item].stack_size*data.settings[item]) then
                trash_warning = ' [Auto trash: '..p.auto_trash_filters[item]..']'
            end
            p.print(item..': '..data.settings[item]..' stacks ('..math.ceil(game.item_prototypes[item].stack_size*data.settings[item])..' items)'..trash_warning)
        end
    elseif positive == false and data.settings[item] == 0 then
        if item == 'Default' then
            init_player_settings(event.player_index, true)
            data = global.players_data[event.player_index]
            data.settings['Default'] = 0
            p.print('All your HandyHands settings were deleted.')
            p.print('Default'..': '..data.settings['Default']..' stacks.')
        else
            data.settings[item] = nil
            p.print('Your HandyHands setting for item '..item..' was deleted and will use the same setting as Default (currently '..data.settings['Default']..' stacks).')
        end
    end
    global.players_data[event.player_index] = data
end

function init(event, force)
    -- Might be called with nil event and force
    if global.players_data == nil or force then
        global.players_data = {}
    end
    for i = 1, #game.players do
        init_player(i,force)
    end
end

function init_player(player_index, force)
    global.players_cache[player_index] = {}
    return init_player_settings(player_index, force)
end

function init_player_settings(player_index, force)
    local wasnil = global.players_data[player_index] == nil
    if wasnil or force then
        global.players_data[player_index] = {}
    end
    global.players_data[player_index].settings = global.players_data[player_index].settings or {}
    global.players_data[player_index].settings['Default'] = global.players_data[player_index].settings['Default'] or 0.2
    if wasnil then
        -- Only for beginners, so that you don't lose your starting iron to ammo before you have your pick axe ;}
        global.players_data[player_index].settings['firearm-magazine'] = 0.05*100/game.item_prototypes['firearm-magazine'].stack_size
        game.players[player_index].print('HandyHands autocrafting enabled for quickbar filtered items and ammo. Default amount: '..global.players_data[player_index].settings['Default']..' stacks.')
        game.players[player_index].print('Change HandyHands autocrafting limits with hotkeys (Options > Controls > Mods).')
        game.players[player_index].print('Empty cursor: change Default. Forget all HandyHands settings by deleting Default setting.')
        game.players[player_index].print('Individual item settings are modified when held in cursor and deleted when decreased below 0.')
    end
    return global.players_data[player_index]
end

function map(l,f)
    local r = {}
    for i = 1, #l do
        r[i] = f(l[i], i, l)
    end
    return r
end
function filter(l,f)
    local r = {}
    for i = 1, #l do
        if f(l[i], i, l) then
            r[i] = l[i]
        end
    end
    return r
end

-- Gives an iterator over items in list l which are first filtered by function f and then mapped over by function m.
-- f(c,i,a) and m(c,i,a) are given 3 parameters: (current_element, index_of_element, array)
function list_iter_filt_map(l,f,m)
    local i = 0
    local n = #l
    return function()
        while i < n do
            i = i + 1
            if f == nil or f(l[i], i, l) then
                return m(l[i], i, l)
            end
        end
    end
end

-- Flattens an iterator over iterators over elements to an iterator over elements.
-- Basically it turns {{1,2},{3,4,5},{},{6},{7,8}} into {1,2,3,4,5,6,7,8} but for iterators instead of lists.
function iterlist_iter(il)
    local i = 1
    return function()
        while i <= #il do
            local el = il[i]()
            if el ~= nil then 
                return el
            end
            i = i + 1
        end
    end
end

script.on_init(init)
script.on_event(defines.events.on_player_joined_game, function(event) init_player(event.player_index, false) end)

-- Data migration
script.on_configuration_changed(function(event)
    local handy = event.mod_changes[mod_name]
    if handy then
        for i = 1, #game.players do
            local p = game.players[i]
            if p.connected then
                local function pre_state()
                    local function init(event, force)
                        -- Might be called with nil event and force
                        if global.players_data == nil or force then
                            global.players_data = {}
                        end
                    end
                    init()
                    if debugging then p.print('Ran "pre_state" migration.') end
                end
                local function indirect_state()
                    -- Clean up old junk
                    global.max_arr = nil

                    -- Proper init of new players
                    if global.players_data == nil then
                        global.players_data = {}
                    end
                    local function init_player_settings(player_index, force)
                        if global.players_data[player_index] == nil or force then
                            global.players_data[player_index] = {}
                            global.players_data[player_index].settings = {}
                            global.players_data[player_index].settings['Default'] = 1
                        end
                        return global.players_data[player_index]
                    end
                    for i = 1, #game.players do
                        init_player_settings(i,false)
                    end

                    -- Migration of player settings from older versions
                    local max_arr = {}
                    max_arr[-1] = 0
                    max_arr[0] = 0.5
                    for i=1, 4 do 
                        max_arr[i] = i
                    end
                    for i = 1, #global.players_data do
                        local data = global.players_data[i].settings
                        for i,v in pairs(global.players_data[i].settings) do
                            data[i] = max_arr[v]
                        end
                        global.players_data[i].settings = data
                    end
                    if debugging then p.print('Ran "indirect_state" migration.') end
                end
                local function add_cache()
                    global.players_cache = global.players_cache or {}
                    for i = 1, #game.players do
                        global.players_cache[i] = {}
                    end
                    if debugging then p.print('Ran "add_cache" migration.') end
                end
                local migrations = {pre_state, indirect_state, add_cache}
                local migration_index = {
                    ['1.0.0'] = 1,
                    ['1.0.1'] = 1,
                    ['1.0.2'] = 1,
                    ['1.1.0'] = 2,
                    ['1.1.1'] = 2,
                    ['1.1.2'] = 2,
                    ['1.2.0'] = 3,
                    ['1.2.1'] = 3,
                    ['1.2.2'] = 3,
                    ['1.2.3'] = 3,
                }
                -- If loading a save with no known incompatability, do a non-destructive init
                if handy.old_version ~= nil and migration_index[handy.old_version] ~= nil then
                    for i = migration_index[handy.old_version], #migrations do
                        migrations[i]()
                    end
                end
                init()
                if debugging then
                    if handy.old_version ~= nil then
                        p.print(mod_name..' v'..handy.old_version..' updated to v'..handy.new_version)
                    else
                        p.print(mod_name..' v'..handy.new_version..' was installed.')
                    end
                end
            end
        end
    end
end)

remote.add_interface('handyhands', {
    set = function(player_index, item, limit) global.players_data[player_index].settings[item] = limit end,
    change = function(player_index, positive) change({player_index = player_index}, positive) end,
    settings = function(player_index) return global.players_data[player_index].settings end
})