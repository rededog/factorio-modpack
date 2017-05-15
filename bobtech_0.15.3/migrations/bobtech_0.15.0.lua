game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["logistics-3"].researched then
    force.recipes["logistic-science-pack"].enabled = true
  end
end

