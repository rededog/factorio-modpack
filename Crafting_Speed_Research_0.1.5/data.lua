for k = 1,20 do
  if k>=16 then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
      },
      time = 30
    }
  elseif k>=12then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 30
    }
  elseif k>=8 then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    }

  elseif k>=4 then 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  else 
    unit_array =
    {
      count = 50*math.floor(k^1.2),
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    }
  end
  
  if k ==1 then
    data:extend({

      {
        type = "technology",
        name= tostring("crafting-speed-upgrade-"..k),
        icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
        icon_size = 64,
        unit = unit_array,
        order="c-k-f-a",
        upgrade = true,
        localised_name = "Crafting speed upgrade "..k.." - "..100+(20*k).."%"
      }
      
    })
  else
    data:extend({

      {
        type = "technology",
        name= tostring("crafting-speed-upgrade-"..k),
        prerequisites = {tostring("crafting-speed-upgrade-"..k-1)},
        icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
        icon_size = 64,
        unit = unit_array,
        order="c-k-f-a",
        upgrade = true,
        localised_name = "Crafting speed upgrade "..k.." - "..100+(20*k).."%"
      }
      
    })
  end
end
data:extend
({
  {
    type = "technology",
    name = "crafting-speed-upgrade-21",
    icon = "__Crafting_Speed_Research__/crafting-speed-research.png",
    icon_size = 64,
    prerequisites = {"crafting-speed-upgrade-20"},
    unit =
    {
      count_formula = "50(L^1.2)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    upgrade = true,
    order="c-k-f-a",
    localised_name = "Crafting speed upgrade"
  }
})
