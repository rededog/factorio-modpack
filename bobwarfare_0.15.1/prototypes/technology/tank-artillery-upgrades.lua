data:extend(
{
  {
    type = "technology",
    name = "bob-artillery-damage-1",
    icon = "__base__/graphics/technology/cannon-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"bob-tanks-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-a"
  },
  {
    type = "technology",
    name = "bob-artillery-damage-2",
    icon = "__base__/graphics/technology/cannon-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"bob-artillery-damage-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-b"
  },
  {
    type = "technology",
    name = "bob-artillery-damage-3",
    icon = "__base__/graphics/technology/cannon-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 0.3
      }
    },
    prerequisites = {"bob-artillery-damage-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-c"
  },
  {
    type = "technology",
    name = "bob-artillery-damage-4",
    icon = "__base__/graphics/technology/cannon-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 0.5
      }
    },
    prerequisites = {"bob-artillery-damage-3"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-d"
  },
  {
    type = "technology",
    name = "bob-artillery-damage-5",
    icon = "__base__/graphics/technology/cannon-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 1
      }
    },
    prerequisites = {"bob-artillery-damage-4"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-e"
  },
  {
    type = "technology",
    name = "bob-artillery-damage-6",
    icon = "__base__/graphics/technology/cannon-damage.png",
    icon_size = 128,
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 1
      }
    },
    prerequisites = {"bob-artillery-damage-5"},
    unit =
    {
      count_formula = "2^(L-5)*1000",
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-o-f"
  },
  {
    type = "technology",
    name = "bob-artillery-speed-1",
    icon = "__base__/graphics/technology/cannon-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"bob-tanks-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-g"
  },
  {
    type = "technology",
    name = "bob-artillery-speed-2",
    icon = "__base__/graphics/technology/cannon-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = 0.2
      }
    },
    prerequisites = {"bob-artillery-speed-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-h"
  },
  {
    type = "technology",
    name = "bob-artillery-speed-3",
    icon = "__base__/graphics/technology/cannon-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = 0.3
      }
    },
    prerequisites = {"bob-artillery-speed-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-i"
  },
  {
    type = "technology",
    name = "bob-artillery-speed-4",
    icon = "__base__/graphics/technology/cannon-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = 0.6
      }
    },
    prerequisites = {"bob-artillery-speed-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-j"
  },
  {
    type = "technology",
    name = "bob-artillery-speed-5",
    icon = "__base__/graphics/technology/cannon-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = 0.1
      }
    },
    prerequisites = {"bob-artillery-speed-4"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-k"
  },
}
)
