data:extend(
{
  {
    type = "item",
    name = "vehicle-roboport",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-roboport.png",
    placed_as_equipment_result = "vehicle-roboport",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-f[roboport-1]",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "vehicle-roboport-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-roboport.png",
    placed_as_equipment_result = "vehicle-roboport-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-f[roboport-2]",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-roboport",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"advanced-circuit", 10},
      {"iron-gear-wheel", 40},
      {"steel-plate", 20},
      {"battery", 45},
    },
    result = "vehicle-roboport"
  },

  {
    type = "recipe",
    name = "vehicle-roboport-2",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"vehicle-roboport", 5},
      {"processing-unit", 100}
    },
    result = "vehicle-roboport-2"
  },

  {
    type = "roboport-equipment",
    name = "vehicle-roboport",
    take_result = "vehicle-roboport",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-roboport.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "35MJ",
      input_flow_limit = "3500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    energy_consumption = "20kW",

    robot_limit = 10,
    construction_radius = 15,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"car", "tank", "cargo-wagon"}
  },

  {
    type = "roboport-equipment",
    name = "vehicle-roboport-2",
    take_result = "vehicle-roboport-2",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-roboport.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "35MJ",
      input_flow_limit = "3500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    energy_consumption = "20kW",

    robot_limit = 25,
    construction_radius = 20,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 4,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"car", "tank", "cargo-wagon"}
  },


  {
    type = "technology",
    name = "vehicle-roboport-equipment",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-roboport.png",
    icon_size = 128,
    order = "v-c-k-z",
    prerequisites =
    {
      "construction-robotics",
      "vehicle-solar-panel-equipment-1"
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-roboport"
      },
    },
  },

  {
    type = "technology",
    name = "vehicle-roboport-equipment-2",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-roboport.png",
    icon_size = 128,
    order = "v-c-k-z-2",
    prerequisites =
    {
      "vehicle-roboport-equipment",
    },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-roboport-2"
      },
    },
  },
}
)

