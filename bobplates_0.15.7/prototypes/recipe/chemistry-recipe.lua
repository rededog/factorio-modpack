if settings.startup["bobmods-plates-groundwater"].value == true then
data:extend(
{
  {
    type = "recipe",
    name = "lithia-water",
    category = "water-pump",
    energy_required = 1,
    ingredients =
    {
    },
    results = 
    {
      {type = "fluid", name = "lithia-water", amount = 100}
    },
    subgroup = "bob-fluid-pump",
    icon = "__bobplates__/graphics/icons/lithia-water.png",
    order = "b[fluid-chemistry]-b[lithia-water]"
  },

  {
    type = "recipe",
    name = "ground-water",
    category = "water-pump",
    energy_required = 1,
    ingredients =
    {
    },
    results = 
    {
      {type = "fluid", name = "water", amount = 100}
    },
    subgroup = "bob-fluid-pump",
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "b[fluid-chemistry]-b[water]"
  },
}
)

if settings.startup["bobmods-plates-purewater"].value == true then
data:extend(
{
  {
    type = "recipe",
    name = "pure-water",
    category = "water-pump",
    energy_required = 1,
    ingredients =
    {
    },
    results = 
    {
      {type = "fluid", name = "pure-water", amount = 100}
    },
    subgroup = "bob-fluid-pump",
    icon = "__bobplates__/graphics/icons/pure-water.png",
    order = "b[fluid-chemistry]-b[pure-water]"
  },
}
)
end
end


if settings.startup["bobmods-plates-purewater"].value == true then
data:extend(
{
  {
    type = "recipe",
    name = "pure-water",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "steam", amount = 100},
    },
    results =
    {
      {type = "fluid", name = "pure-water", amount = 100},
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/pure-water.png",
    order = "b[fluid-chemistry]-b[pure-water]",
  }
}
)
end

data:extend(
{
  {
    type = "recipe",
    name = "bob-liquid-air",
    category = "air-pump",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
    },
    results = 
    {
      {type = "fluid", name = "liquid-air", amount = 100}
    },
    subgroup = "bob-fluid-pump",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    order = "b[fluid-chemistry]-b[liquid-air]"
  },

  {
    type = "recipe",
    name = "water-electrolysis",
    category = "electrolysis",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "hydrogen", amount = 20},
      {type = "fluid", name = "oxygen", amount = 12.5}
    },
    subgroup = "bob-fluid-electrolysis",
    icon = "__bobplates__/graphics/icons/water-electrolysis.png",
    order = "b[fluid-chemistry]-b[water-electrolysis]"
  },

  {
    type = "recipe",
    name = "nitrogen",
    category = "chemistry",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "liquid-air", amount = 20}
    },
    results =
    {
      {type = "fluid", name = "nitrogen", amount = 20},
      {type = "fluid", name = "oxygen", amount = 5}
    },
    main_product = "nitrogen",
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/nitrogen.png",
    order = "b[fluid-chemistry]-b[nitrogen]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.8, b = 0.0, a = 0.000},
      secondary = {r = 0.5, g = 1.0, b = 0.5, a = 0.000},
      tertiary = {r = 0.25, g = 0.5, b = 0.25, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "salt-water-electrolysis",
    category = "electrolysis",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type = "item", name = "salt", amount = 1},
      {type = "fluid", name = "water", amount = 10}
    },
    results =
    {
      {type = "item", name = "sodium-hydroxide", amount = 1},
      {type = "fluid", name = "chlorine", amount = 25},
      {type = "fluid", name = "hydrogen", amount = 20},
    },
    icon = "__bobplates__/graphics/icons/salt-water-electrolysis.png",
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[salt-water-electrolysis]"
  },

  {
    type = "recipe",
    name = "lithium-water-electrolysis",
    icon = "__bobplates__/graphics/icons/lithium-perchlorate.png",
    category = "electrolysis",
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[lithium-water-electrolysis]",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "lithium-chloride", amount = 1},
      {type = "fluid", name = "water", amount = 20}
    },
    results =
    {
      {type = "item", name = "lithium-perchlorate", amount = 1},
      {type = "fluid", name = "hydrogen", amount = 10},
    }
  },

  {
    type = "recipe",
    name = "nitrogen-dioxide",
    category = "chemistry",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "nitrogen", amount = 10},
      {type = "fluid", name = "oxygen", amount = 20}
    },
    results =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 20},
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/nitrogen-dioxide.png",
    order = "b[fluid-chemistry]-b[nitrogen-dioxide]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.8, g = 0.0, b = 1.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "hydrogen-chloride",
    category = "chemistry",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="chlorine", amount=12.5},
      {type="fluid", name="hydrogen", amount=10},
    },
    results=
    {
      {type="fluid", name="hydrogen-chloride", amount=25}
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/hydrogen-chloride.png",
    order = "b[fluid-chemistry]-b[hydrogen-chloride]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.7, b = 0.2, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.2, g = 0.7, b = 0.0, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "nitric-acid",
    category = "chemistry",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water", amount=20},
      {type="fluid", name="nitrogen-dioxide", amount=20},
    },
    results=
    {
      {type="fluid", name="nitric-acid", amount=20},
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/nitric-acid.png",
    order = "b[fluid-chemistry]-b[nitric-acid]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 1.0, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.0, g = 0.0, b = 0.7, a = 0.000},
    },
  },


  {
    type = "recipe",
    name = "tungstic-acid",
    category = "chemistry",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="tungsten-ore", amount=2},
      {type="fluid", name="hydrogen-chloride", amount=25}
    },
    results=
    {
      {type="fluid", name="tungstic-acid", amount=20},
      {type="item", name="calcium-chloride", amount=1}
    },
    main_product= "tungstic-acid",
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/tungstic-acid.png",
    order = "b[fluid-chemistry]-b[tungstic-acid]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.2, b = 0.7, a = 0.000},
      secondary = {r = 0.0, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.0, g = 0.0, b = 0.7, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "ferric-chloride-solution",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
      {type="fluid", name="hydrogen-chloride", amount=30},
    },
    results=
    {
      {type="fluid", name="ferric-chloride-solution", amount=50}
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/ferric-chloride-solution.png",
    order = "b[fluid-chemistry]-a[ferric-chloride-solution]",
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.6, b = 0.2, a = 0.000},
      secondary = {r = 0.2, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.0, g = 0.7, b = 0.7, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "liquid-fuel",
    category = "chemistry",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "light-oil", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "liquid-fuel", amount = 10}
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/liquid-fuel.png",
    order = "b[fluid-chemistry]-b[liquid-fuel]",
    crafting_machine_tint =
    {
      primary = {r = 1.0, g = 0.9, b = 0.5, a = 0.000},
      secondary = {r = 0.8, g = 0.7, b = 0.0, a = 0.000},
      tertiary = {r = 0.9, g = 0.8, b = 0.25, a = 0.000},
    },
  },


  {
    type = "recipe",
    name = "sulfuric-acid-2",
    category = "chemistry",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type = "fluid", name = "water", amount = 50},
      {type = "fluid", name = "sulfur-dioxide", amount = 50},
    },
    results =
    {
      {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    main_product = "sulfuric-acid",
    subgroup = "bob-fluid",
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    order = "b[fluid-chemistry]-f[sulfuric-acid]",
    crafting_machine_tint =
    {
      primary = {r = 0.875, g = 0.735, b = 0.000, a = 0.000}, -- #dfbb0000
      secondary = {r = 0.103, g = 0.940, b = 0.000, a = 0.000}, -- #1aef0000
      tertiary = {r = 0.564, g = 0.795, b = 0.000, a = 0.000}, -- #8fca0000
    },
  },

  {
    type = "recipe",
    name = "sulfur-dioxide",
    category = "chemistry",
    subgroup = "bob-fluid",
    order = "a[fluid]-g[sulfur-dioxide]",	
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "sulfur", amount = 5},
      {type = "fluid", name = "oxygen", amount = 50}
    },
    results =
    {
      {type = "fluid", name = "sulfur-dioxide", amount = 50}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.7, g = 0.7, b = 0.0, a = 0.000},
      secondary = {r = 1.0, g = 1.0, b = 0.5, a = 0.000},
      tertiary = {r = 0.9, g = 0.9, b = 0.25, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "petroleum-gas-cracking",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 10},
      {type = "fluid", name = "petroleum-gas", amount = 10},
    },
    results =
    {
      {type = "fluid", name = "hydrogen", amount = 100}
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/petrolium-gas-cracking.png",
    order = "b[fluid-chemistry]-b[hydrogen]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.34, b = 0.5, a = 0.000},
      secondary = {r = 0.3, g = 0.1, b = 0.3, a = 0.000},
      tertiary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
    },
  },


  {
    type = "recipe",
    name = "bob-oil-processing",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type = "fluid", name = "crude-oil", amount = 100}
    },
    results=
    {
      {type = "fluid", name = "heavy-oil", amount = 50},
      {type = "fluid", name = "light-oil", amount = 20},
      {type = "fluid", name = "petroleum-gas", amount = 30}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bob-oil-processing]"
  },

  {
    type = "recipe",
    name = "coal-cracking",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type = "item", name = "coal", amount = 2},
      {type = "fluid", name = "water", amount = 15}
    },
    results =
    {
      {type = "fluid", name = "heavy-oil", amount = 12}
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/coal-cracking.png",
    order = "b[fluid-chemistry]-a[coal-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.0, g = 0.34, b = 0.5, a = 0.000},
      secondary = {r = 0.1, g = 0.1, b = 0.1, a = 0.000},
      tertiary = {r = 0.5, g = 0.04, b = 0.0, a = 0.000},
    },
  },


  {
    type = "recipe",
    name = "salt",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type = "fluid", name = "water", amount = 25}
    },
    result = "salt",
  },

  {
    type = "recipe",
    name = "lithium-chloride",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type = "fluid", name = "lithia-water", amount = 25}
    },
    result = "lithium-chloride",
  },

  {
    type = "recipe",
    name = "sulfur-2",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    order = "f[sulfur]",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type = "fluid", name = "sulfur-dioxide", amount = 50},
      {type = "fluid", name = "hydrogen", amount = 80}
    },
    result = "sulfur",
    result_count = 5,
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
    },
  },

  {
    type = "recipe",
    name = "calcium-chloride",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="stone", amount=1},
      {type="fluid", name="hydrogen-chloride", amount=10},
    },
    result = "calcium-chloride",
    order = "f[calcium-chloride]",
    crafting_machine_tint =
    {
      primary = {r = 0.5, g = 0.5, b = 0.4, a = 0.000},
      secondary = {r = 0.7, g = 0.5, b = 0.0, a = 0.000},
      tertiary = {r = 0.5, g = 0.05, b = 0.4, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "alumina",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="sodium-hydroxide", amount=1},
      {type="item", name="bauxite-ore", amount=1},
    },
    result = "alumina",
    order = "f[alumina]"
  },

  {
    type = "recipe",
    name = "lead-oxide",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="lead-ore", amount=1},
      {type="fluid", name="oxygen", amount=10},
    },
    results =
    {
      {type="item", name="lead-oxide", amount=1},
      {type="fluid", name="sulfur-dioxide", amount=10},
    },
    main_product = "lead-oxide",
    icon = "__bobplates__/graphics/icons/lead-oxide.png",
    order = "f[lead-oxide]",
    {
      primary = {r = 0.1, g = 0.1, b = 0.1, a = 0.000},
      secondary = {r = 0.7, g = 0.0, b = 0.0, a = 0.000},
      tertiary = {r = 0.1, g = 0.01, b = 0.1, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "silver-nitrate",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"silver-plate", 1},
      {type = "fluid", name = "nitrogen-dioxide", amount = 10},
    },
    result = "silver-nitrate",
    order = "f[lead-oxide]",
    {
      primary = {r = 0.0, g = 0.0, b = 1.0, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.3, g = 0.03, b = 0.3, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "silver-oxide",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"silver-nitrate", 1},
      {"sodium-hydroxide", 1},
    },
    result = "silver-oxide",
    order = "f[lead-oxide]",
    {
      primary = {r = 0.3, g = 0.3, b = 0.3, a = 0.000},
      secondary = {r = 0.7, g = 0.7, b = 0.7, a = 0.000},
      tertiary = {r = 0.3, g = 0.03, b = 0.3, a = 0.000},
    },
  },

  {
    type = "recipe",
    name = "tungsten-oxide",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type = "fluid", name = "tungstic-acid", amount = 10},
    },
    result = "tungsten-oxide",
  },

  {
    type = "recipe",
    name = "powdered-tungsten",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "tungsten-oxide", amount = 1},
      {type = "fluid", name = "hydrogen", amount = 15}
    },
    result = "powdered-tungsten",
  },

  {
    type = "recipe",
    name = "cobalt-oxide",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "cobalt-ore", amount = 2},
      {type = "item", name = "stone", amount = 1}
    },
    result = "cobalt-oxide",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "cobalt-oxide-from-copper",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 25,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "copper-ore", amount = 7},
      {type = "item", name = "stone", amount = 1},
      {type = "item", name = "carbon", amount = 1},
      {type = "fluid", name = "hydrogen", amount = 5},
    },
    results=
    {
      {type = "item", name = "copper-plate", amount_min = 7, amount_max = 11},
      {type = "item", name = "cobalt-oxide", amount_min = 1, amount_max = 3},
    },
    main_product= "copper-plate",
    icon = "__bobplates__/graphics/icons/copper-cobalt-oxide.png",
    order = "c-b[cobalt-oxide-from-copper]"
  },

  {
    type = "recipe",
    name = "silver-from-lead",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 25,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "lead-oxide", amount = 7},
      {type = "item", name = "carbon", amount = 3},
      {type = "item", name = "nickel-plate", amount = 1},
    },
    results=
    {
      {type = "item", name = "lead-plate", amount_min = 7, amount_max = 11},
      {type = "item", name = "silver-ore", amount_min = 1, amount_max = 3},
    },
    icon = "__bobplates__/graphics/icons/lead-silver.png",
    order = "c-b[silver-from-lead]",
  },

 
  {
    type = "recipe",
    name = "silicon-carbide",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {type="item", name="silicon-powder", amount=1},
      {type="item", name="carbon", amount=1}
    },
    result="silicon-carbide",
    result_count = 2,
  },
}
)



