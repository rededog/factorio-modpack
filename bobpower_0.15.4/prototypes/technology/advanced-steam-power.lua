data:extend(
{
  {
    type = "technology",
    name = "advanced-steam-power-1",
    icon = "__base__/graphics/technology/nuclear-power.png",
    icon_size = 128,
    prerequisites =
    {
      "nuclear-power",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger-2"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-turbine-2"
      }
    },
    unit =
    {
      time = 30,
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
    order = "e-p-b-c-1"
  },

  {
    type = "technology",
    name = "advanced-steam-power-2",
    icon = "__base__/graphics/technology/nuclear-power.png",
    icon_size = 128,
    prerequisites =
    {
      "advanced-steam-power-1",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger-3"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-turbine-3"
      }
    },
    unit =
    {
      time = 30,
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
    },
    order = "e-p-b-c-2"
  },
}
)



