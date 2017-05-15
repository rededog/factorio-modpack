bobmods.ores.thorium =
{
  name = "thorium-ore",
  tint = {r = 1, g = 1, b = 0.25},
  map_color = {r = 0.7, g = 0.7, b = 0},
  hardness = 2.6,
  mining_time = 3,
  enabled = false, --because It is controlled by a settings.lua option
-- notice the icon line is missing! Icon will now be generated!
  stage_mult = 5,
  required_fluid = "sulfuric-acid",
  fluid_amount = 10,
  item =
  {
    create = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 6
  },
  effect =
  {
-- the new effects section works like the sprite section. You can specify a sheet to generate from a pre-defined seet with a tint
-- or specify options to use your own sheet, like in the gem-ore file.
    sheet = 6, --only sheet 6 exists right now

-- the following lines of the effect table are not needed, but are here for the example
    animation_period or 5,
    animation_period_deviation or 1,
    darkness_multiplier or 3.6,
    min_alpha or 0.2,
    max_alpha or 0.3,
  },
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.5,
    size = 0.8
  }
}


