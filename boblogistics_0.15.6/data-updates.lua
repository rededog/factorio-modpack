require("prototypes.recipe.roboport-recipe-updates")
require("prototypes.recipe.robots-recipe-updates")
require("prototypes.recipe.inserter-recipe-updates")
require("prototypes.recipe.belt-recipe-updates")
require("prototypes.recipe.storage-tank-recipe-updates")
require("prototypes.recipe.train-recipe-updates")
require("prototypes.recipe.pump-recipe-updates")

require("prototypes.technology-updates")
require("prototypes.productivity-limitations")


bobmods.lib.tech.remove_recipe_unlock("automation", "long-handed-inserter")
bobmods.lib.tech.add_recipe_unlock("long-inserters-1", "long-handed-inserter")


for i, pipe in pairs(data.raw["pipe-to-ground"]) do
  table.insert(pipe.flags,"fast-replaceable-no-build-while-moving")
end


if data.raw["damage-type"]["bob-pierce"] then
  table.insert(data.raw.locomotive["locomotive"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["cargo-wagon"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["bob-locomotive-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["bob-cargo-wagon-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["bob-locomotive-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["bob-cargo-wagon-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["bob-armoured-locomotive"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})

  table.insert(data.raw.locomotive["bob-armoured-locomotive-2"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
end


for index, inserter in pairs(data.raw.inserter) do
  inserter.allow_custom_vectors = true
  if settings.startup["bobmods-logistics-drainlessinserters"].value == true then
    inserter.energy_source.drain = "0W"
  end
end

