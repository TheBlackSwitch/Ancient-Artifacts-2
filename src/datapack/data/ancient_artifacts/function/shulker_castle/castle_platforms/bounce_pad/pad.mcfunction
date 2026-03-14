tag @s add smithed.entity
tag @s add smithed.strict

scoreboard players set .entity_count temp 0
execute store result score .entity_count temp if entity @e[type=item_display,distance=..1,tag=gravity_platform]
execute if score .entity_count temp matches 2.. run kill @s

execute unless score @s animation matches 1.. align xyz positioned ~-0.5 ~ ~-0.5 if entity @a[dx=1,dy=0,dz=1,predicate=!ancient_artifacts:movement/sneak] run function ancient_artifacts:shulker_castle/castle_platforms/bounce_pad/activate
execute if score @s animation matches 1.. run function ancient_artifacts:shulker_castle/castle_platforms/bounce_pad/animation

execute if entity @e[type=shulker,tag=shulker_king,distance=..3] run tp @n[tag=bounce_pad_hitbox] ~ ~-3.5 ~
execute unless entity @e[type=shulker,tag=shulker_king,distance=..3] run tp @n[tag=bounce_pad_hitbox] ~ ~-2.23 ~