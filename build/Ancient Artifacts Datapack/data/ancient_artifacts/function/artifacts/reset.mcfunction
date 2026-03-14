tag @s remove healing_amulet
attribute @s max_health modifier remove healing_amulet
tag @s remove deactivator_1
tag @s remove deactivator_2
tag @s remove deactivator_3
tag @s remove final_shout_crown
tag @s remove explorers_boots
tag @s remove explorer_1
tag @s remove explorer_2
tag @s remove explorer_3
tag @s remove explorer_4
tag @s remove travelers_boots_max
tag @s remove travelers_boots_lvl3-4
attribute @s jump_strength modifier remove travelers_boots
attribute @s safe_fall_distance modifier remove travelers_boots
attribute @s movement_speed modifier remove travelers_boots
tag @s remove builders_ring_1
tag @s remove builders_ring_2
tag @s remove builders_ring_3
tag @s remove tinkering_tiara
tag @s remove divers_boots
attribute @s block_interaction_range modifier remove reaching_bracelet
attribute @s entity_interaction_range modifier remove reaching_bracelet
scoreboard players set @s luck 0
tag @s remove thermal_tiara
attribute @s movement_speed modifier remove cooling_boots
tag @s remove saturating_necklace
tag @s remove life_steal_necklace
tag @s remove despawner_1
tag @s remove despawner_2
tag @s remove despawner_3
tag @s remove despawner
tag @s remove borla_of_vision
tag @s remove was_below_0
tag @s remove was_dark
tag @s remove mine_experience
tag @s remove double_xp
attribute @s max_health modifier remove beefy_crystal
attribute @s scale modifier remove beefy_crystal
attribute @s attack_damage modifier remove beefy_crystal
tag @s remove beefy_crystal
tag @s remove sonic_crystal
tag @s remove strengthed
attribute @s attack_damage modifier remove strengthening_anklet
attribute @s max_health modifier remove strengthening_anklet
tag @s remove recovery
tag @s remove recovery_1
tag @s remove recovery_2
tag @s remove recovery_3
tag @s remove recovery_4
tag @s remove recovery_xp
tag @s remove recycler_1
tag @s remove recycler_2
tag @s remove recycler_3
attribute @s scale modifier remove shrinking_anklet
attribute @s attack_speed modifier remove shrinking_anklet
attribute @s movement_speed modifier remove shrinking_anklet
attribute @s block_break_speed modifier remove shrinking_anklet
tag @s remove shrunk
tag @s remove mine_5
tag @s remove mine_9
attribute @s block_break_speed modifier remove miners_crown
tag @s remove smelt
attribute @s block_break_speed modifier remove smelting_tiara
tag @s remove bulk_1
tag @s remove bulk_2
tag @s remove bulk_3
attribute @s gravity modifier remove gravitation_toe_ring
attribute @s safe_fall_distance modifier remove gravitation_toe_ring
tag @s remove levitation_medal
attribute @s safe_fall_distance modifier remove landing_toe_ring
tag @s remove landing_toe_ring
tag @s remove dragons_breath_circlet
attribute @s attack_knockback modifier remove knockback_watch
execute as @e[type=item_display, tag=artifact_golem, nbt={Glowing: 1b}] run data modify entity @s Glowing set value 0b
execute unless score @s extra_inv_open matches -2147483648..2147483647 run scoreboard players set @s extra_inv_open 0
