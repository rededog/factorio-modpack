data:extend(
{
  {
    type = "recipe",
    name = "logistic-science-pack",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {"filter-inserter", 1},
      {"express-transport-belt", 1},
      {"flying-robot-frame", 1},
      {"steel-chest", 1},
    },
    result = "logistic-science-pack"
  },

  {
    type = "recipe",
    name = "lab-2",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {"lab", 1},
      {"advanced-circuit", 10},
      {"filter-inserter", 4},
      {"express-transport-belt", 4}
    },
    result = "lab-2"
  },
}
)


bobmods.lib.tech.add_recipe_unlock("logistics-3", "logistic-science-pack")
