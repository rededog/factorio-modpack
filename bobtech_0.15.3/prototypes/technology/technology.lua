data:extend(
{
  {
    type = "technology",
    name = "advanced-research",
    icon = "__bobtech__/graphics/icons/research-effectivity.png",
    icon_size = 64,
    order = "c-k-m-a",
    prerequisites =
    {
      "advanced-electronics",
      "logistics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lab-2"
      },
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
  },
}
)


