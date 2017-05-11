require "util"

script.on_event(defines.events.on_tick, function(event)
	TickTanks(event)
end)

script.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "stone-waterwell" then
		if global.iwaterwell == nil then
			global.iwaterwell = {}
		end
		
		local iwaterwell = event.created_entity
		table.insert(global.iwaterwell, iwaterwell)
	end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
	if event.created_entity.name == "stone-waterwell" then
		if global.iwaterwell == nil then
			global.iwaterwell = {}
		end
		
		local iwaterwell = event.created_entity
		table.insert(global.iwaterwell, iwaterwell)
	end
end)

function TickTanks(event)
	if global.iwaterwell ~= nil then 
		for k,iwaterwell in pairs(global.iwaterwell) do
			if iwaterwell.valid then 
				local amount = 1
				if iwaterwell.fluidbox[1] ~= nil then
					amount = iwaterwell.fluidbox[1].amount
				end

				iwaterwell.fluidbox[1] = {
					["type"] = "water",
					["amount"] = amount + 10,
					["temperature"] = 10
				}
			end
		end
	end
end