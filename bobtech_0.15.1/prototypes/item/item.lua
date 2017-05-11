data:extend(
{
  {
    type = "tool",
    name = "logistic-science-pack",
    icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "e[logistic-science-pack]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "science-pack-gold",
    icon = "__bobtech__/graphics/icons/science-pack-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "g[science-pack-5-a]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },

  {
    type = "item",
    name = "lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[lab-2]",
    place_result = "lab-2",
    stack_size = 10
  },
}
)


table.insert(data.raw["lab"]["lab"].inputs, "logistic-science-pack")
