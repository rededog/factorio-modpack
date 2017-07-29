data:extend(
{
  {
    type = "item",
    name = "heat-shield-tile",
    icon = "__bobrevamp__/graphics/icons/heat-shield-tile.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "m[heat-shield-tile]",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "heat-shield-tile",
    category = "crafting-with-fluid",
    normal =
    {
      energy_required = 30,
      enabled = false,
      ingredients =
      {
        {"steel-plate", 10},
        {"plastic-bar", 5},
      },
      result= "heat-shield-tile"
    },
    expensive =
    {
      energy_required = 30,
      enabled = false,
      ingredients =
      {
        {"steel-plate", 10},
        {"plastic-bar", 10},
      },
      result= "heat-shield-tile"
    },
  },

  {
    type = "technology",
    name = "heat-shield",
    icon = "__bobrevamp__/graphics/icons/technology/heat-shield.png",
    icon_size = 128,
    order = "k",
    prerequisites =
    {
      "steel-processing",
      "plastics",
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-shield-tile"
      },
    },
  },
  {
    type = "technology",
    name = "low-density-structure",
    icon = "__base__/graphics/icons/rocket-structure.png",
    icon_size = 32,
    prerequisites =
    {
      "steel-processing",
      "plastics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "low-density-structure"
      },
    },
    unit =
    {
      count = 500,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "k"
  },
}
)


