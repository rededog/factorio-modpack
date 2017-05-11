script.on_event(defines.events.on_research_finished, function(event) 
  local research = event.research
	local force = research.force
	local name = research.name
  if name:find("crafting%-speed%-upgrade") then
    force.manual_crafting_speed_modifier = force.manual_crafting_speed_modifier + 0.2
  end
end)