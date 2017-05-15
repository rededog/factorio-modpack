game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["chemical-processing-2"].researched then
    force.recipes["chemical-steel-furnace"].enabled = true
  end
  if force.technologies["fluid-handling"].researched then
    force.recipes["empty-canister"].enabled = true
  end
end


