
execute unless entity @s[tag=player_was_nearby] if entity @a[distance=..32] run tag @s add player_was_nearby

execute if entity @s[tag=artifact_aquired,tag=!boss_started] run function ancient_artifacts:shulker_castle/intro/convert
execute if entity @s[tag=player_was_nearby,tag=!artifact_aquired] if score .10 slow_tick matches 10 run function ancient_artifacts:shulker_castle/intro/dialog
execute if entity @s[tag=player_was_nearby,tag=!artifact_aquired] if score .3 slow_tick matches 3 run particle minecraft:entity_effect{color:[0.6,0.8,0.4,1.0]} ~ ~ ~ 0.1 0.1 0.1 3 5