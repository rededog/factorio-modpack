data:extend(
{
  {
    type = "recipe",
    name = "heat-exchanger-2",
    enabled = "false",
    ingredients =
    {
      {"heat-exchanger", 1},
      {"steel-plate", 10},
      {"copper-plate", 50},
      {"pipe", 10}
    },
    result = "heat-exchanger-2",
  },

  {
    type = "recipe",
    name = "heat-exchanger-3",
    enabled = "false",
    ingredients =
    {
      {"heat-exchanger-2", 1},
      {"steel-plate", 10},
      {"copper-plate", 50},
      {"pipe", 10}
    },
    result = "heat-exchanger-3",
  },
}
)



