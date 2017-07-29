
if data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "steel-plate", "tungsten-plate")
  bobmods.lib.tech.add_prerequisite("advanced-steam-power-1", "tungsten-processing")
else
  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("advanced-steam-power-1", "invar-processing")
  end
end

if data.raw.item["brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "copper-plate", "brass-alloy")
  bobmods.lib.tech.add_prerequisite("advanced-steam-power-1", "zinc-processing")
end

if data.raw.item["brass-pipe"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "pipe", "brass-pipe")
else
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("heat-exchanger-2", "pipe", "steel-pipe")
  end
end



if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "steel-plate", "silicon-nitride")
  bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "ceramics")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "tungsten-processing")
  end
end

if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "copper-plate", "copper-tungsten-alloy")
  bobmods.lib.tech.add_prerequisite("advanced-steam-power-2", "tungsten-alloy-processing")
else
  if data.raw.item["brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "copper-plate", "brass-alloy")
  end
end

if data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "pipe", "tungsten-pipe")
else
  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "pipe", "brass-pipe")
  else
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.add_ingredient("heat-exchanger-2", "pipe", "steel-pipe")
    end
  end
end


