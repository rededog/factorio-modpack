function bobmods.power.steam_turbine_horizontal_animation()
return
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
          width = 160,
          height = 123,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(0, -2.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
            width = 320,
            height = 245,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(0, -2.75),
            scale = 0.5
          },
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
          width = 217,
          height = 74,
          frame_count = 8,
          line_length = 4,
          draw_as_shadow = true,
          shift = util.by_pixel(28.75, 18),
          hr_version = {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
            width = 435,
            height = 150,
            frame_count = 8,
            line_length = 4,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 18),
            scale = 0.5
          },
        },
      },
    }
end

function bobmods.power.steam_turbine_vertical_animation()
return
    {
     layers =
     {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
          width = 108,
          height = 173,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(5, 6.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
            width = 217,
            height = 347,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(4.75, 6.75),
            scale = 0.5
          },
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
          width = 151,
          height = 131,
          frame_count = 8,
          line_length = 4,
          draw_as_shadow = true,
          shift = util.by_pixel(39.5, 24.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
            width = 302,
            height = 260,
            frame_count = 8,
            line_length = 4,
            draw_as_shadow = true,
            shift = util.by_pixel(39.5, 24.5),
            scale = 0.5
          },
        },
      },
    }
end



data:extend(
{
  {
    type = "generator",
    name = "steam-turbine-2",
    icon = "__base__/graphics/icons/steam-turbine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-turbine-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1.1,
    fluid_usage_per_tick = 1.25,
    maximum_temperature = 625,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "steam-engine",
    collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} },
      },
      production_type = "input-output"
    },
    fluid_input =
    {
      name = "steam",
      amount = 0.0,
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation = bobmods.power.steam_turbine_horizontal_animation(),
    vertical_animation = bobmods.power.steam_turbine_vertical_animation(),
    smoke =
    {
      {
        name = "turbine-smoke",
        north_position = {0.0, -1.0},
        east_position = {0.75, -0.75},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-turbine-3",
    icon = "__base__/graphics/icons/steam-turbine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-turbine-3"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1.2,
    fluid_usage_per_tick = 1.5,
    maximum_temperature = 750,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "steam-engine",
    collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} },
      },
      production_type = "input-output"
    },
    fluid_input =
    {
      name = "steam",
      amount = 0.0,
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation = bobmods.power.steam_turbine_horizontal_animation(),
    vertical_animation = bobmods.power.steam_turbine_vertical_animation(),
    smoke =
    {
      {
        name = "turbine-smoke",
        north_position = {0.0, -1.0},
        east_position = {0.75, -0.75},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
}
)
