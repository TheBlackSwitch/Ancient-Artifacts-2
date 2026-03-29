scoreboard players operation #search tbs.ID = @s tbs.ID
effect give @s invisibility infinite 1 true
execute if score @s lifetime matches ..40 on vehicle at @s run tp @s ~ ~0.05 ~
execute if score @s lifetime matches ..40 run playsound block.sculk.break neutral @a ~ ~ ~ 0.9 1
execute if score @s lifetime matches 1 run playsound entity.warden.emerge neutral @a ~ ~ ~ 0.2 2
execute if score @s lifetime matches ..40 unless entity @s[type=drowned] at @n[type=marker, tag=necromanced, tag=particles, predicate=theblackswitch:v2.0/patch-2/player_id/match_search] run particle block{block_state: "sculk"} ~ ~ ~ 0.6 0.1 0.6 0.1 100 force
execute if score @s lifetime matches ..40 unless entity @s[type=drowned] at @n[type=marker, tag=necromanced, tag=particles, predicate=theblackswitch:v2.0/patch-2/player_id/match_search] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.1 0.6 0 10 force
execute if score @s lifetime matches ..40 if entity @s[type=drowned] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.3 0.6 0.3 0 10 force
execute if score @s lifetime matches ..40 if entity @s[type=drowned] run particle minecraft:bubble_column_up ~ ~ ~ 0.3 0.6 0.3 0.05 10 force
execute if score @s lifetime matches 41 unless entity @s[type=drowned] as @n[type=marker, tag=necromanced, tag=particles, predicate=theblackswitch:v2.0/patch-2/player_id/match_search] run kill @s
scoreboard players add @s lifetime 1
execute if score @s lifetime matches ..40 run return fail
scoreboard players set .has_vehicle temp 0
execute on vehicle run scoreboard players set .has_vehicle temp 1
execute if score .has_vehicle temp matches 0 run kill @s
execute on vehicle as @s run tag @s add damager
execute on vehicle at @s if score #18 tbs.slow_tick matches 16.. store result storage ancient_artifacts:attack damage float 1 on vehicle run attribute @s attack_damage get
execute if score #18 tbs.slow_tick matches 16.. on target positioned ~ ~-2 ~ if entity @s[distance=0.01..1.5, tag=!damager, tag=!smithed.strict] run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/damage with storage ancient_artifacts:attack
execute on vehicle as @s run tag @s remove damager
execute if score @s lifetime matches 600.. on vehicle at @s run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/kill
execute if score @s lifetime matches 600.. run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/kill
