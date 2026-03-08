##Platforms
function ancient_artifacts:shulker_castle/castle_platforms/antigravity_platform/tick
function ancient_artifacts:shulker_castle/castle_platforms/bounce_pad/tick

##Castle
execute as @e[type=marker,tag=shulker_castle] at @s run function ancient_artifacts:shulker_castle/castle

##Shulker - Not boss yet
execute as @e[type=shulker,tag=shulker_king,tag=!boss_started] at @s run function ancient_artifacts:shulker_castle/intro/shulker
execute as @e[type=shulker,tag=shulker_king,tag=!boss_started] at @s at @n[type=marker,tag=shulker_castle,distance=..64] run tp @s ~ ~-0.5 ~

#the offer
execute if score #3 tbs.slow_tick matches 3 as @e[type=interaction,tag=shulker_king_offer] at @s run function ancient_artifacts:shulker_castle/intro/offer

#the conversion particles
execute as @e[type=item_display,tag=ring_large] at @s run function ancient_artifacts:shulker_castle/intro/particles/ring_large
execute as @e[type=item_display,tag=ring_small] at @s if score #5 tbs.slow_tick matches 5 run function ancient_artifacts:shulker_castle/intro/particles/ring_small

##Bossfight
function ancient_artifacts:shulker_castle/bossfight/tick

##Fix knockback_resistance
execute if score #10 tbs.slow_tick matches 3 as @a at @s run function ancient_artifacts:shulker_castle/bossfight/fix_knockback_resistance