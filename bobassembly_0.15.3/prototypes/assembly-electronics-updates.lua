if settings.startup["bobmods-assembly-electronicmachines"].value == true then

if data.raw.item["basic-circuit-board"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-1", "electronic-circuit", "basic-circuit-board")
end


if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("electronics-machine-2", {"steel-bearing", 5})
else
  bobmods.lib.recipe.add_ingredient("electronics-machine-2", {"iron-gear-wheel", 3})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-2", "iron-gear-wheel", "steel-gear-wheel")
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("electronics-machine-3", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-processing")
  end
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("electronics-machine-3", {"titanium-bearing", 5})
else
  bobmods.lib.recipe.add_ingredient("electronics-machine-3", {"iron-gear-wheel", 3})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("electronics-machine-3", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-processing")
  end
end



-- add new electronics crafting categories
bobmods.lib.machine.type_if_add_category("player", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics-machine")


data.raw.recipe["copper-cable"].category = "electronics"
data.raw.recipe["green-wire"].category = "electronics"
data.raw.recipe["red-wire"].category = "electronics"

if data.raw.recipe["electronic-circuit"].category ~= "electronics" and data.raw.recipe["electronic-circuit"].category ~= "electronics-machine" then
  data.raw.recipe["electronic-circuit"].category = "electronics"
end

if data.raw.recipe["advanced-circuit"].category ~= "electronics" and data.raw.recipe["advanced-circuit"].category ~= "electronics-machine" then
  data.raw.recipe["advanced-circuit"].category = "electronics"
end

if data.raw.recipe["processing-unit"].category ~= "electronics" and data.raw.recipe["processing-unit"].category ~= "electronics-machine" then
  data.raw.recipe["processing-unit"].category = "electronics-machine"
end

if data.raw.recipe["advanced-processing-unit"] and data.raw.recipe["advanced-processing-unit"].category ~= "electronics" and data.raw.recipe["advanced-processing-unit"].category ~= "electronics-machine" then
  data.raw.recipe["advanced-processing-unit"].category = "electronics-machine"
end


end

