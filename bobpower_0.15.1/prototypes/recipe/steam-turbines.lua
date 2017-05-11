data:extend(
{
  {
    type = "recipe",
    name = "steam-turbine-2",
    normal =
    {
      enabled = "false",
      ingredients =
      {
        {"steam-turbine", 1},
        {"advanced-circuit", 5},
        {"steel-plate", 25},
        {"iron-gear-wheel", 25},
      },
      result = "steam-turbine-2",
    },
    expensive =
    {
      enabled = "false",
      ingredients =
      {
        {"steam-turbine", 1},
        {"advanced-circuit", 10},
        {"steel-plate", 75},
        {"iron-gear-wheel", 75},
      },
      result = "steam-turbine-2",
    }
  },
  {
    type = "recipe",
    name = "steam-turbine-3",
    normal =
    {
      enabled = "false",
      ingredients =
      {
        {"steam-turbine-2", 1},
        {"processing-unit", 5},
        {"steel-plate", 25},
        {"iron-gear-wheel", 25},
      },
      result = "steam-turbine-3",
    },
    expensive =
    {
      enabled = "false",
      ingredients =
      {
        {"steam-turbine-2", 1},
        {"processing-unit", 10},
        {"steel-plate", 75},
        {"iron-gear-wheel", 75},
      },
      result = "steam-turbine-3",
    }
  },
}
)



