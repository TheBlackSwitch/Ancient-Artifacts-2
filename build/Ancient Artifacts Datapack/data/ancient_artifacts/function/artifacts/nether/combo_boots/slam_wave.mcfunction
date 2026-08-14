playsound block.anvil.land player @a ~ ~ ~ 0.3 0.8
playsound entity.warden.sonic_boom player @a ~ ~ ~ 0.5 0.3
scoreboard players operation #search tbs.ID = @s tbs.ID
summon wind_charge ~ ~ ~ {Motion: [0.0d, -5.0d, 0.0d], Tags: ["combo_knockback", "INIT"]}
execute if score @s slam_distance matches 11.. run summon wind_charge ~3 ~ ~ {Motion: [0.0d, -5.0d, 0.0d], Tags: ["combo_knockback", "INIT"]}
execute if score @s slam_distance matches 11.. run summon wind_charge ~-3 ~ ~ {Motion: [0.0d, -5.0d, 0.0d], Tags: ["combo_knockback", "INIT"]}
execute if score @s slam_distance matches 11.. run summon wind_charge ~ ~ ~3 {Motion: [0.0d, -5.0d, 0.0d], Tags: ["combo_knockback", "INIT"]}
execute if score @s slam_distance matches 11.. run summon wind_charge ~ ~ ~-3 {Motion: [0.0d, -5.0d, 0.0d], Tags: ["combo_knockback", "INIT"]}
execute as @e[tag=combo_knockback, tag=INIT, limit=1] run data modify entity @s Owner set from entity @p[predicate=theblackswitch:v2.0/patch-4/player_id/match_search]
tag @e[tag=combo_knockback, tag=INIT] remove INIT
execute if score @s slam_distance matches ..10 run playsound item.mace.smash_ground player @a ~ ~ ~ 1 1.2
execute if score @s slam_distance matches 11.. run playsound item.mace.smash_ground_heavy player @a ~ ~ ~ 1 1.2
execute if score @s slam_distance matches 11.. run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 0.8
execute if score @s slam_distance matches 11.. run particle gust_emitter_large ~5 ~ ~
execute if score @s slam_distance matches 11.. run particle gust_emitter_large ~-5 ~ ~
execute if score @s slam_distance matches 11.. run particle gust_emitter_large ~ ~ ~5
execute if score @s slam_distance matches 11.. run particle gust_emitter_large ~ ~ ~-5
execute if score @s slam_distance matches ..6 run particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 0.8 0 0.8 1 250 force
execute if score @s slam_distance matches 7..10 run particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 1.6 0 1.6 1 500 force
execute if score @s slam_distance matches 11..14 run particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 2.4 0 2.4 1.2 750 force
execute if score @s slam_distance matches 15..18 run particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 3.2 0 3.2 1 1000 force
execute if score @s slam_distance matches 19.. run particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 4 0 4 1 1250 force
function ancient_artifacts:tag_tamed
execute if score @s slam_distance matches ..6 run function ancient_artifacts:utilities/damage_entity_by_player_mainhand {multiplier: 1.1d, entities: "@e[distance=0.1..3,type=!#ancient_artifacts:no_damage,tag=!tamed,tag=!smithed.strict]"}
execute if score @s slam_distance matches 7..10 run function ancient_artifacts:utilities/damage_entity_by_player_mainhand {multiplier: 1.1d, entities: "@e[distance=0.1..4,type=!#ancient_artifacts:no_damage,tag=!tamed,tag=!smithed.strict]"}
execute if score @s slam_distance matches 11..14 run function ancient_artifacts:utilities/damage_entity_by_player_mainhand {multiplier: 1.1d, entities: "@e[distance=0.1..5,type=!#ancient_artifacts:no_damage,tag=!tamed,tag=!smithed.strict]"}
execute if score @s slam_distance matches 15..18 run function ancient_artifacts:utilities/damage_entity_by_player_mainhand {multiplier: 1.1d, entities: "@e[distance=0.1..6,type=!#ancient_artifacts:no_damage,tag=!tamed,tag=!smithed.strict]"}
execute if score @s slam_distance matches 19.. run function ancient_artifacts:utilities/damage_entity_by_player_mainhand {multiplier: 1.1d, entities: "@e[distance=0.1..7,type=!#ancient_artifacts:no_damage,tag=!tamed,tag=!smithed.strict]"}
execute unless items entity @s weapon.mainhand echo_shard run function ancient_artifacts:utilities/add_item_damage {damage: 16}
execute if items entity @s weapon.mainhand echo_shard run function ancient_artifacts:utilities/add_item_damage {damage: 1}
scoreboard players set @s combo.slam 200
tag @s remove slam
