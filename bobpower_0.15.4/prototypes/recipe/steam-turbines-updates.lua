if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-2", "normal", {"steel-bearing", 20})
  bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-2", "expensive", {"steel-bearing", 30})
else
  bobmods.lib.recipe.add_ingredient("steam-turbine-2", {"iron-gear-wheel", 25})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("advanced-steam-power-1", "aluminium-processing")
end



if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-3", "normal", {"titanium-bearing", 20})
  bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-3", "expensive", {"titanium-bearing", 30})
else
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-3", "normal", {"steel-bearing", 20})
    bobmods.lib.recipe.add_difficulty_ingredient("steam-turbine-3", "expensive", {"steel-bearing", 30})
  else
    bobmods.lib.recipe.add_ingredient("steam-turbine-3", {"iron-gear-wheel", 25})
  end
end


if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "tungsten-processing")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "iron-gear-wheel", "steel-gear-wheel")
    end
  end
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "tungsten-processing")
  end
end


