scoreboard players set .entity_count temp 0
execute store result score .entity_count temp if entity @e[type=item_display,distance=..1,tag=gravity_platform]
execute if score .entity_count temp matches 2.. run kill @s

execute if entity @s[tag=active] run effect give @a[dx=2,dy=0,dz=2] unluck 5 3
execute if entity @s[tag=active] run effect give @a[dx=2,dy=0,dz=2] speed 5
execute if entity @s[tag=active] run effect give @a[dx=2,dy=0,dz=2] jump_boost 5 5

execute if entity @e[type=shulker,tag=shulker_king,distance=..5] unless entity @s[tag=inactive] run function ancient_artifacts:shulker_castle/castle_platforms/antigravity_platform/deactivate
execute unless entity @e[type=shulker,tag=shulker_king,distance=..5] unless entity @s[tag=active] run function ancient_artifacts:shulker_castle/castle_platforms/antigravity_platform/activate