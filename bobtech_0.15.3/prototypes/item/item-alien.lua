if
  data.raw.item["alien-artifact"] and
  data.raw.item["alien-artifact-blue"] and
  data.raw.item["alien-artifact-orange"] and
  data.raw.item["alien-artifact-purple"] and
  data.raw.item["alien-artifact-yellow"] and
  data.raw.item["alien-artifact-green"] and
  data.raw.item["alien-artifact-red"]
then

data:extend(
{
  {
    type = "tool",
    name = "alien-science-pack",
    icon = "__bobtech__/graphics/icons/alien-science-pack.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-a]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "alien-science-pack-blue",
    icon = "__bobtech__/graphics/icons/alien-science-pack-blue.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-b]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "alien-science-pack-orange",
    icon = "__bobtech__/graphics/icons/alien-science-pack-orange.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-c]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "alien-science-pack-purple",
    icon = "__bobtech__/graphics/icons/alien-science-pack-purple.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-d]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "alien-science-pack-yellow",
    icon = "__bobtech__/graphics/icons/alien-science-pack-yellow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-e]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "alien-science-pack-green",
    icon = "__bobtech__/graphics/icons/alien-science-pack-green.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-f]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "alien-science-pack-red",
    icon = "__bobtech__/graphics/icons/alien-science-pack-red.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-6-g]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },

  {
    type = "item",
    name = "lab-alien",
    icon = "__bobtech__/graphics/icons/lab-alien.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[lab-alien]",
    place_result = "lab-alien",
    stack_size = 10
  },
}
)


end
