if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  bobmods.lib.tech.add_prerequisite ("bob-electric-energy-accumulators-3", "battery-2")
end

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  bobmods.lib.tech.add_prerequisite ("bob-electric-energy-accumulators-4", "battery-3")
end

