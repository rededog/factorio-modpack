for index, force in pairs(game.forces) do
  force.recipes["burner-inserter"].enabled = true
  if force.technologies["logistics"].researched then
    force.recipes["fast-inserter"].enabled = true
  end
  if force.technologies["electronics"].researched then
    force.recipes["filter-inserter"].enabled = true
  end
  if force.technologies["express-inserters"].researched then
    force.recipes["express-inserter"].enabled = true
  end
end

