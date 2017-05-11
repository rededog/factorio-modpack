require("prototypes.overides")
require("prototypes.recipe.recipe-updates")
require("prototypes.technology.technology-updates")
require("prototypes.productivity-limitations")

if settings.startup["bobmods-warfare-robotupdate"].value == true then
  require("prototypes.robots-updates")
end

if settings.startup["bobmods-warfare-drainlesslaserturrets"].value == true then
  for index, turret in pairs(data.raw["electric-turret"]) do
    turret.energy_source.drain = "0W"
  end
end