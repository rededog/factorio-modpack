data:extend(
{
  {
    type = "storage-tank",
    name = "stone-waterwell",
    icon = "__StoneWaterWell__/graphics/stone-waterwell.icon.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "stone-waterwell"},
    max_health = 200,
    corpse = "medium-remnants",
    fluid = "water",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box =
    {
      base_area = 500,
      pipe_covers = pipecoversdirtyhack(),
      pipe_connections =
      {
        { position = {0, 3} },
      },
    },
	window_bounding_box = {{-3.0, -3.0}, {3.0, 3.0}},
    tile_width = 1,
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 0.65 },
	pictures =
    {
      picture =
      {
        north =
        {
          filename = "__StoneWaterWell__/graphics/stone-waterwell.png",
          priority = "extra-high",
          shift = {0.3, 0.8},
          width = 256,
          height = 256
        },
        east =
        {
          filename = "__StoneWaterWell__/graphics/stone-waterwell.png",
          priority = "extra-high",
          shift = {0.3, 0.8},
          x = 256,
          width = 256,
          height = 256
        },
        south =
        {
          filename = "__StoneWaterWell__/graphics/stone-waterwell.png",
          priority = "extra-high",
          shift = {0.3, 0.8},
          x = 512,
          width = 256,
          height = 256
        },
        west =
        {
          filename = "__StoneWaterWell__/graphics/stone-waterwell.png",
          priority = "extra-high",
          shift = {0.3, 0.8},
          x = 768,
          width = 256,
          height = 256
        }
      },
	  fluid_background =
      {
        filename = "__StoneWaterWell__/graphics/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__StoneWaterWell__/graphics/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24
      },
      flow_sprite =
      {
        filename = "__StoneWaterWell__/graphics/fluid-flow-low-temperature.png",
        priority = "medium",
        width = 160,
        height = 20
      },
	  gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
        hr_version =
        {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1
        }
      }
	},
	flow_length_in_ticks = 360,
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
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
    circuit_wire_max_distance = 7.5
  }
})