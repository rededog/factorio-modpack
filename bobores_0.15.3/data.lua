if not bobmods then bobmods = {} end
if not bobmods.ores then bobmods.ores = {} end
if not bobmods.gems then bobmods.gems = {} end
if not bobmods.ores.settings then bobmods.ores.settings = {} end

data:extend(
{
  {
    type = "item-subgroup",
    name = "bob-ores",
    group = "intermediate-products",
    order = "b-a"
  },
  {
    type = "resource-category",
    name = "water"
  }
}
)



bobmods.ores.settings.EnhanceStone = settings.startup["bobmods-ores-enhancestone"].value
bobmods.ores.settings.UnsortedGemOre = settings.startup["bobmods-ores-unsortedgemore"].value
bobmods.ores.settings.GemsFromOtherOres = settings.startup["bobmods-ores-gemsfromotherores"].value
bobmods.ores.settings.GemProbability = settings.startup["bobmods-ores-gemprobability"].value

bobmods.ores.settings.LeadGivesNickel = settings.startup["bobmods-ores-leadgivesnickel"].value
bobmods.ores.settings.LeadNickelRatio = settings.startup["bobmods-ores-leadnickelratio"].value

bobmods.ores.settings.NickelGivesCobalt = settings.startup["bobmods-ores-nickelgivescobalt"].value
bobmods.ores.settings.NickelCobaltRatio = settings.startup["bobmods-ores-nickelcobaltratio"].value

bobmods.gems.RubyRatio = settings.startup["bobmods-gems-sapphireratio"].value
bobmods.gems.SapphireRatio = settings.startup["bobmods-gems-rubyratio"].value
bobmods.gems.EmeraldRatio = settings.startup["bobmods-gems-emeraldratio"].value
bobmods.gems.AmethystRatio = settings.startup["bobmods-gems-amethystratio"].value
bobmods.gems.TopazRatio = settings.startup["bobmods-gems-topazratio"].value
bobmods.gems.DiamondRatio = settings.startup["bobmods-gems-diamondratio"].value

require("prototypes.gems") -- must be after gem changes are defined.
require("prototypes.tin-ore")
require("prototypes.lead-ore")
require("prototypes.quartz")
require("prototypes.silver-ore")
require("prototypes.zinc-ore")
require("prototypes.gold-ore")
require("prototypes.bauxite")
require("prototypes.rutile")
require("prototypes.tungsten-ore")
require("prototypes.thorium-ore")

require("prototypes.nickel-ore")
require("prototypes.cobalt-ore")
require("prototypes.sulfur")
require("prototypes.gem-ore")

require("prototypes.fluids")


for i, ore in pairs(bobmods.ores) do
  bobmods.lib.resource.generate_data_stage(ore)
end



if settings.startup["bobmods-ores-enablebauxite"].value == true then
  bobmods.ores.bauxite.enabled = true
end
if settings.startup["bobmods-ores-enablecobaltore"].value == true then
  bobmods.ores.cobalt.enabled = true
end
if settings.startup["bobmods-ores-enablegemsore"].value == true then
  bobmods.ores.gems.enabled = true
end
if settings.startup["bobmods-ores-enablegoldore"].value == true then
  bobmods.ores.gold.enabled = true
end
if settings.startup["bobmods-ores-enableleadore"].value == true then
  bobmods.ores.lead.enabled = true
end
if settings.startup["bobmods-ores-enablenickelore"].value == true then
  bobmods.ores.nickel.enabled = true
end
if settings.startup["bobmods-ores-enablequartz"].value == true then
  bobmods.ores.quartz.enabled = true
end
if settings.startup["bobmods-ores-enablerutile"].value == true then
  bobmods.ores.rutile.enabled = true
end
if settings.startup["bobmods-ores-enablesilverore"].value == true then
  bobmods.ores.silver.enabled = true
end
if settings.startup["bobmods-ores-enablesulfur"].value == true then
  bobmods.ores.sulfur.enabled = true
end
if settings.startup["bobmods-ores-enabletinore"].value == true then
  bobmods.ores.tin.enabled = true
end
if settings.startup["bobmods-ores-enabletungstenore"].value == true then
  bobmods.ores.tungsten.enabled = true
end
if settings.startup["bobmods-ores-enablezincore"].value == true then
  bobmods.ores.zinc.enabled = true
end
if settings.startup["bobmods-ores-enablewaterores"].value == true then
  bobmods.ores.water.enabled = true
  bobmods.ores.lithia_water.enabled = true
end
if settings.startup["bobmods-ores-enablethoriumore"].value == true then
  bobmods.ores.thorium.enabled = true
end



data.raw.item["copper-ore"].stack_size = 200
--data.raw.item["copper-ore"].icon = "__bobores__/graphics/icons/copper-ore.png"
if data.raw.resource["copper-ore"] then
--  data.raw.resource["copper-ore"].icon = "__bobores__/graphics/icons/copper-ore.png"
end

data.raw.item["iron-ore"].stack_size = 200
data.raw.item["iron-ore"].icon = "__bobores__/graphics/icons/iron-ore.png"
if data.raw.resource["iron-ore"] then
  data.raw.resource["iron-ore"].icon = "__bobores__/graphics/icons/iron-ore.png"
end

data.raw.item["stone"].stack_size = 200
data.raw.item["stone"].icon = "__bobores__/graphics/icons/stone.png"
if data.raw.resource["stone"] then
  data.raw.resource["stone"].icon = "__bobores__/graphics/icons/stone.png"
end

data.raw.item["coal"].stack_size = 200
--data.raw.item["coal"].icon = "__bobores__/graphics/icons/coal.png"
if data.raw.resource["coal"] then
--  data.raw.resource["coal"].icon = "__bobores__/graphics/icons/coal.png"
end


