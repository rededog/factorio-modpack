game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.recipes["bob-distillery"] and force.technologies["electrolysis-1"].researched then
    force.recipes["bob-distillery"].enabled = true
  end
end


