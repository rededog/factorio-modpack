data.raw["pipe-to-ground"]["pipe-to-ground"].fast_replaceable_group = "pipe-to-ground"

function bob_pipepictures(pipe_type)
  return
  {
    straight_vertical_single =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 44,
      height = 58
    },
    straight_vertical =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical.png",
      priority = "extra-high",
      width = 44,
      height = 42
    },
    straight_vertical_window =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    straight_horizontal =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    straight_horizontal_window =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    corner_up_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-up-right.png",
      priority = "extra-high",
      width = 32,
      height = 40
    },
    corner_up_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-up-left.png",
      priority = "extra-high",
      width = 44,
      height = 44
    },
    corner_down_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-down-right.png",
      priority = "extra-high",
      width = 32,
      height = 32
    },
    corner_down_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-down-left.png",
      priority = "extra-high",
      width = 36,
      height = 32
    },
    t_up =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-up.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    t_down =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-down.png",
      priority = "extra-high",
      width = 40,
      height = 44
    },
    t_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-right.png",
      priority = "extra-high",
      width = 40,
      height = 32
    },
    t_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-left.png",
      priority = "extra-high",
      width = 44,
      height = 42
    },
    cross =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cross.png",
      priority = "extra-high",
      width = 40,
      height = 40
    },
    ending_up =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-up.png",
      priority = "extra-high",
      width = 44,
      height = 42
    },
    ending_down =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-down.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    ending_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-right.png",
      priority = "extra-high",
      width = 32,
      height = 44
    },
    ending_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-left.png",
      priority = "extra-high",
      width = 58,
      height = 44
    },
    horizontal_window_background =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    vertical_window_background =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5
      }
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
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
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1
      }
    }
  }
end


data:extend(
{
  {
    type = "pipe",
    name = "stone-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "stone-pipe"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("stone"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "stone-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "stone-pipe-to-ground"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },


  {
    type = "pipe",
    name = "copper-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "copper-pipe"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("copper"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "copper-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "copper-pipe-to-ground"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },


  {
    type = "pipe",
    name = "steel-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "steel-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("steel"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "steel-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "steel-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },


  {
    type = "pipe",
    name = "plastic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "plastic-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("plastic"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "plastic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "plastic-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)


if data.raw.item["bronze-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "bronze-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "bronze-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("bronze"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "bronze-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "bronze-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["brass-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "brass-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/brass-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "brass-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("brass"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "brass-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/brass-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "brass-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["silicon-nitride"] then
data:extend(
{
  {
    type = "pipe",
    name = "ceramic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ceramic-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("ceramic"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "ceramic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ceramic-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["titanium-plate"] then
data:extend(
{
  {
    type = "pipe",
    name = "titanium-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "titanium-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("titanium"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "titanium-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "titanium-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["tungsten-plate"] then
data:extend(
{
  {
    type = "pipe",
    name = "tungsten-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "tungsten-pipe"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("tungsten"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "tungsten-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "tungsten-pipe-to-ground"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end

