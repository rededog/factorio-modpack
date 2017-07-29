game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["chemical-processing-3"].researched then
    force.recipes["enriched-fuel-from-liquid-fuel"].enabled = true
  end
end


