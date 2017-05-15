require("prototypes.overides")
require("prototypes.recipe.entity-recipe-updates")
require("prototypes.technology-updates")
require("prototypes.productivity-limitations")

-- add Assembling Machine catagory.
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "crafting-machine")

-- Water mining category, add to pumpjacks
bobmods.lib.machine.type_if_add_resource_category("mining-drill", "basic-fluid", "water")

-- Reduce cost of Steel
if settings.startup["bobmods-plates-cheapersteel"].value == true then
  data.raw.recipe["steel-plate"].normal.energy_required = 7
  data.raw.recipe["steel-plate"].normal.ingredients  = {{"iron-plate", 2}}
  data.raw.recipe["steel-plate"].expensive.energy_required = 14
  data.raw.recipe["steel-plate"].expensive.ingredients  = {{"iron-plate", 4}}

  if data.raw.recipe["metallurgy-steel-plate"] then
    if data.raw.fluid["molten-carbonated-iron"] then
      data.raw.recipe["metallurgy-steel-plate"].energy_required = 0.4
      data.raw.recipe["metallurgy-steel-plate"].ingredients = {{type="fluid", name="molten-carbonated-iron", amount=15},{type="fluid", name="water", amount=20}}
    end
  end
end

if settings.startup["bobmods-plates-batteryupdate"].value == true then
  data.raw.technology["battery"].prerequisites = {"sulfur-processing", "plastics"}
  data.raw.recipe["battery"].normal.ingredients = {{"lead-plate", 2}, {type="fluid", name="sulfuric-acid", amount=20}, {"plastic-bar", 1}}
  data.raw.recipe["battery"].expensive.ingredients = {{"lead-plate", 2}, {type="fluid", name="sulfuric-acid", amount=40}, {"plastic-bar", 2}}
end


bobmods.lib.create_gas_bottle(data.raw.fluid["hydrogen"])
bobmods.lib.create_gas_bottle(data.raw.fluid["oxygen"])
bobmods.lib.create_gas_bottle(data.raw.fluid["nitrogen"])
bobmods.lib.create_gas_bottle(data.raw.fluid["chlorine"])
bobmods.lib.create_gas_bottle(data.raw.fluid["hydrogen-chloride"])
bobmods.lib.create_gas_bottle(data.raw.fluid["nitrogen-dioxide"])
bobmods.lib.create_gas_bottle(data.raw.fluid["sulfur-dioxide"])

data.raw.item["petroleum-gas-barrel"] = nil
data.raw.recipe["fill-petroleum-gas-barrel"] = nil
data.raw.recipe["empty-petroleum-gas-barrel"] = nil
bobmods.lib.create_gas_bottle(data.raw.fluid["petroleum-gas"])


data.raw.item["liquid-fuel-barrel"].fuel_value = "150MJ"
data.raw.item["liquid-fuel-barrel"].fuel_category = "chemical"
data.raw.item["liquid-fuel-barrel"].fuel_acceleration_multiplier = 1.5
data.raw.item["liquid-fuel-barrel"].fuel_top_speed_multiplier = 1.1
--data.raw.item["liquid-fuel-barrel"].burnt_result = "empty-barrel"

--[[
data.raw.item["hydrogen-barrel"].fuel_value = "25MJ"
data.raw.item["hydrogen-barrel"].fuel_category = "chemical"
data.raw.item["hydrogen-barrel"].fuel_acceleration_multiplier = 1.2
data.raw.item["hydrogen-barrel"].fuel_top_speed_multiplier = 1.05
--data.raw.item["liquid-fuel-barrel"].burnt_result = "gas-canister"
]]--


if settings.startup["bobmods-plates-purewater"].value == true then
  bobmods.lib.resource.remove_result("ground-water", "water")
  bobmods.lib.resource.add_result("ground-water", { type = "fluid", name = "pure-water", amount = 10, probability = 1})

  bobmods.lib.recipe.replace_ingredient("water-electrolysis", "water", "pure-water")
  bobmods.lib.recipe.replace_ingredient("salt-water-electrolysis", "water", "pure-water")
  bobmods.lib.recipe.replace_ingredient("lithium-water-electrolysis", "water", "pure-water")

  bobmods.lib.tech.add_prerequisite("electrolysis-1", "automation-2")

  data.raw.recipe["fill-pure-water-barrel"].enabled = true
  data.raw.recipe["empty-pure-water-barrel"].enabled = true
end



local function set_canister(name, colour)
  data.raw.item[name .. "-barrel"].icons = {
    {
      icon = "__bobplates__/graphics/icons/empty-canister.png",
      tint = colour
    }
  }
  data.raw.item[name .. "-barrel"].localised_name = {"item-name.filled-canister", {"fluid-name." .. name}}

  data.raw.recipe["fill-" .. name .. "-barrel"].icons = {
    {
      icon = "__bobplates__/graphics/icons/empty-canister.png",
      tint = colour
    },
    {
      icon = data.raw.fluid[name].icon,
      scale = 0.5,
      shift = {-4, -8}
    }
  }
  data.raw.recipe["fill-" .. name .. "-barrel"].energy_required = 0.2
  data.raw.recipe["fill-" .. name .. "-barrel"].ingredients = {{type = "fluid", name = name, amount = 50}, {type = "item", name = "empty-canister", amount = 1}}
  data.raw.recipe["fill-" .. name .. "-barrel"].localised_name = {"recipe-name.fill-canister", {"fluid-name." .. name}}

  data.raw.recipe["empty-" .. name .. "-barrel"].icons = {
    {
      icon = "__bobplates__/graphics/icons/empty-canister.png",
      tint = colour
    },
    {
      icon = data.raw.fluid[name].icon,
      scale = 0.5,
      shift = {8, 8}
    }
  }
  data.raw.recipe["empty-" .. name .. "-barrel"].energy_required = 0.2
  data.raw.recipe["empty-" .. name .. "-barrel"].results = {{type = "fluid", name = name, amount = 50}, {type = "item", name = "empty-canister", amount = 1}}
  data.raw.recipe["empty-" .. name .. "-barrel"].localised_name = {"recipe-name.empty-filled-canister", {"fluid-name." .. name}}
end


set_canister("liquid-fuel", {r = 0.9, g = 0.2, b = 0})
set_canister("ferric-chloride-solution", {r = 0.5, g = 0.4, b = 0.3})





