function bob_distillery_facing(tint, x, scale)
return {
  layers =
  {
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 122,
        x = x * 122,
        height = 134,
        frame_count = 1,
        shift = util.by_pixel(-5, -4.5),
        scale = scale,
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
          x = x * 244,
          width = 244,
          height = 268,
          frame_count = 1,
          shift = util.by_pixel(-5, -4.5),
          scale = scale * 0.5
        }
      },

      {
        filename = "__bobplates__/graphics/entity/chemical-plant/chemical-plant-mask.png",
        x = x * 156,
        width = 156,
        height = 141,
        frame_count = 1,
        tint = tint,
        shift = util.by_pixel(8, -2),
        scale = scale,
      },

      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
        x = x * 175,
        width = 175,
        height = 110,
        frame_count = 1,
        shift = util.by_pixel(31.5, 11),
        draw_as_shadow = true,
        scale = scale,
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
          x = x * 350,
          width = 350,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(31.5, 10.75),
          draw_as_shadow = true,
          scale = scale * 0.5
        }
      }
  }
}
end


function bob_distillery_animation(tint)
return {
  north = bob_distillery_facing(tint, 0, 2/3),
  east = bob_distillery_facing(tint, 1, 2/3),
  south = bob_distillery_facing(tint, 2, 2/3),
  west = bob_distillery_facing(tint, 3, 2/3)
}
end

if settings.startup["bobmods-plates-purewater"].value == true then

data:extend(
{
  {
    type = "item",
    name = "bob-distillery",
    icon = "__base__/graphics/icons/chemical-plant.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "e[distillery]",
    place_result = "bob-distillery",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "bob-distillery",
    energy_required = 3,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 3},
      {"copper-plate", 3},
      {"pipe", 2},
    },
    result = "bob-distillery"
  },

  {
    type = "assembling-machine",
    name = "bob-distillery",
    icon = "__base__/graphics/icons/chemical-plant.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "bob-distillery"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    crafting_categories = {"distillery"},
    crafting_speed = 1,
    ingredient_count = 2,
    energy_usage = "180kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.002
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    animation = bob_distillery_animation({r = 0.1, g = 0.3, b = 0.7}),
--    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    allowed_effects = {"consumption", "speed", "pollution"},
    module_specification =
    {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    fast_replaceable_group = "distillery",
  },
}
)

end

