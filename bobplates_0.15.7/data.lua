if not bobmods then bobmods = {} end
if not bobmods.plates then bobmods.plates = {} end


if bobmods.ores and settings.startup["bobmods-plates-oreoverride"].value == true then
  bobmods.ores.bauxite.enabled = true
  bobmods.ores.gold.enabled = true
  bobmods.ores.lead.enabled = true
  bobmods.ores.quartz.enabled = true
  bobmods.ores.rutile.enabled = true
  bobmods.ores.silver.enabled = true
  bobmods.ores.tin.enabled = true
  bobmods.ores.tungsten.enabled = true
  bobmods.ores.zinc.enabled = true
  if bobmods.ores.settings and bobmods.ores.settings.LeadGivesNickel == false then
    bobmods.ores.nickel.enabled = true
  end
  if bobmods.ores.settings and bobmods.ores.settings.GemsFromOtherOres == false then
    bobmods.ores.gems.enabled = true
  end
  if settings.startup["bobmods-plates-groundwater"].value == false then
    bobmods.ores.water.enabled = true
    bobmods.ores.lithia_water.enabled = true
  end
end


require("prototypes.category")

require("prototypes.item.ores")
require("prototypes.item.gems")
require("prototypes.item.chemicals")
require("prototypes.item.resource")
require("prototypes.item.plates")
require("prototypes.item.alloys")
require("prototypes.item.parts")
require("prototypes.item.electronics")
require("prototypes.item.entities")
--require("prototypes.item.bottle")

require("prototypes.entity.entities")
require("prototypes.entity.pumps")

require("prototypes.recipe.gems-recipe")
require("prototypes.recipe.chemistry-recipe")
require("prototypes.recipe.resource-recipe")
require("prototypes.recipe.plates-recipe")
require("prototypes.recipe.alloy-recipe")
require("prototypes.recipe.parts-recipe")
require("prototypes.recipe.electronics-recipe")
require("prototypes.recipe.entity-recipe")
--require("prototypes.recipe.bottle-recipe")
require("prototypes.recipe.void-recipe")

require("prototypes.technology")
require("prototypes.technology-metal")

require("prototypes.item.alien")
require("prototypes.recipe.alien-recipe")
require("prototypes.technology-alien")

