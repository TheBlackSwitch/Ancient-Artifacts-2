execute as @e[type=shulker, tag=shulker_king, tag=boss_started] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king
execute as @e[type=marker, tag=shulker_castle, tag=boss_started, tag=!boss_finished] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_castle
execute as @e[type=item_display, tag=strong_bullet_primer] unless predicate ancient_artifacts:has_vehichle at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/stronger_bullets/explode
execute as @e[type=item_display, tag=knockback_bullet_primer] unless predicate ancient_artifacts:has_vehichle at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/knockback_bullets/explode
execute if score #10 tbs.slow_tick matches 5 as @a[scores={shulker_king_music_timer=1..}] at @s unless entity @e[type=marker, tag=shulker_castle, distance=..63, tag=boss_started, tag=!boss_finished] run tag @s remove shulker_king_music
execute if score #10 tbs.slow_tick matches 5 as @a[scores={shulker_king_music_timer=1..}] at @s unless entity @e[type=marker, tag=shulker_castle, distance=..63, tag=boss_started, tag=!boss_finished] run function ancient_artifacts:shulker_castle/bossfight/song/reset
execute if score #60 tbs.slow_tick matches 60 as @e[type=shulker, tag=healing_shulker] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/healer
execute as @e[type=item_display, tag=healing_particle] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/healing_particle
execute as @e[type=item_display, tag=shulker_king_lazer] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/lazer_animation
execute as @e[type=marker, tag=dragon_fireball_detonator] unless predicate ancient_artifacts:has_vehichle at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/detonate
