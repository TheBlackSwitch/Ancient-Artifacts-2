execute as @e[type=item_display, tag=gravity_platform] at @s align xyz positioned ~-1 ~ ~-1 run function ancient_artifacts:shulker_castle/castle_platforms/antigravity_platform/run
execute if score #10 tbs.slow_tick matches 6 as @a run function ancient_artifacts:shulker_castle/castle_platforms/antigravity_platform/player
