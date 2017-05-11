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


