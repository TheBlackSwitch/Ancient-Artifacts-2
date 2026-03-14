playsound minecraft:ambient.underwater.enter hostile @s ~ ~ ~ 1 0 1
playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 0.5 0 0.5
particle minecraft:cloud ^ ^1.5 ^1 0.3 0.5 0.3 0 50
scoreboard players set @s shockwave_cooldown 50
execute rotated as @e[tag=ag_shockwave, limit=1, sort=nearest] run summon breeze_wind_charge ^ ^ ^-1 {Motion: [0.0d, -5.0d, 0.0d]}
execute if score @s shield_time matches 1.. run playsound item.shield.break player @a
execute if score @s shield_time matches 1.. if items entity @s weapon.offhand shield run function ancient_artifacts:utilities/add_item_damage_offhand {damage: 12}
execute if score @s shield_time matches 1.. if items entity @s weapon.mainhand shield run function ancient_artifacts:utilities/add_item_damage {damage: 12}
execute unless score @s shield_time matches 1.. run damage @s 3 ancient_artifacts:artifact_golem_shockwave by @e[tag=artifact_golem, tag=center, limit=1, sort=nearest]
execute unless score @s shield_time matches 1.. run effect give @s slowness 30 2 false
execute if score @s shield_time matches 1.. run function ancient_artifacts:artifact_golem/defence/damage_particle {item: "minecraft:shield"}
