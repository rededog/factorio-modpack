data:extend(
{
  {
    type = "item",
    name = "bob-valve",
    localised_name = {"item-name.valve"},
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-c[valve]",
    place_result = "bob-valve",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "bob-valve",
    energy_required = 2,
    ingredients =
    {
      {"iron-plate", 1},
      {"pipe", 1}
    },
    result= "bob-valve"
  },
  {
    type = "storage-tank",
    name = "bob-valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    localised_name = {"entity-name.valve"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "bob-valve"},
    max_health = 50,
    two_direction_only = false,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
--      base_level = 0.8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          position = {0, -1},
          type="output"
        },
        {
          position = {0, 1},
          type="input"
        }
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      picture =
      {
      north =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 44,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-up.png",
            width = 46,
            height = 56,
            shift = {0.09375, 0.03125},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-up-mask.png",
            width = 46,
            height = 56,
            shift = {0.09375, 0.03125},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      south =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 44,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      west =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 32,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      east =
      {
        layers = 
        {
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 32,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
        }
      },
      fluid_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      window_background =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      flow_sprite =
      {
        filename = "__core__/graphics/empty.png",
        width = 1,
        height = 1,
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        width = 1,
        height = 1,
        frame_count = 1,
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
    },
    circuit_wire_max_distance = 7.5,
  },
}
)

