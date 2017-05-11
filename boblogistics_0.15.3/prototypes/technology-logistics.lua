data.raw.technology["toolbelt"].upgrade = "true"

data:extend(
{
  {
    type = "technology",
    name = "toolbelt-2",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 128,
    effects =
    {
      {
        type = "num-quick-bars",
        modifier = 1
      }
    },
    prerequisites = {"toolbelt"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-m-a"
  },

  {
    type = "technology",
    name = "toolbelt-3",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 128,
    effects =
    {
      {
        type = "num-quick-bars",
        modifier = 1
      }
    },
    prerequisites = {"toolbelt-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-m-b"
  }
}
)


data.raw.technology["character-logistic-slots-4"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}}
data.raw.technology["character-logistic-slots-4"].unit.count = 200

data:extend(
{
  {
    type = "technology",
    name = "character-logistic-slots-5",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-e"
  },

  {
    type = "technology",
    name = "character-logistic-slots-6",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-f"
  },

  {
    type = "technology",
    name = "character-logistic-slots-7",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-6"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-g"
  },

  {
    type = "technology",
    name = "character-logistic-slots-8",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-7"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-h"
  },

  {
    type = "technology",
    name = "character-logistic-slots-9",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-8"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-i"
  },

  {
    type = "technology",
    name = "character-logistic-slots-10",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-9"},
    unit =
    {
      count_formula = "(L-8)*500",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    max_level = "infinite",
    order = "c-k-e-j"
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "character-inventory-slots-1",
    icon = "__boblogistics__/graphics/icons/technology/character-inventory-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-f-a"
  },
  {
    type = "technology",
    name = "character-inventory-slots-2",
    icon = "__boblogistics__/graphics/icons/technology/character-inventory-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    prerequisites = {"character-inventory-slots-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-f-b"
  },
  {
    type = "technology",
    name = "character-inventory-slots-3",
    icon = "__boblogistics__/graphics/icons/technology/character-inventory-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    prerequisites = {"character-inventory-slots-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-f-c"
  },
  {
    type = "technology",
    name = "character-inventory-slots-4",
    icon = "__boblogistics__/graphics/icons/technology/character-inventory-slots.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    prerequisites = {"character-inventory-slots-3"},
    unit =
    {
      count_formula = "2^(L-2)*100",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    max_level = "10",
    order = "c-k-f-d"
  },
}
)

