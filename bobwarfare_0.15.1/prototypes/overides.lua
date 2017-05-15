if data.raw.ammo["piercing-rounds-magazine"].ammo_type and
  data.raw.ammo["piercing-rounds-magazine"].ammo_type.action and
  data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery and
  data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery.target_effects
then
  table.insert(data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery.target_effects, { type = "damage", damage = {amount = 2 , type = "bob-pierce"} } )
end

if data.raw.projectile["piercing-shotgun-pellet"].action and
  data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery and
  data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects
then
  table.insert(data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects, { type = "damage",  damage = {amount = 2 , type = "bob-pierce"} } )
end

