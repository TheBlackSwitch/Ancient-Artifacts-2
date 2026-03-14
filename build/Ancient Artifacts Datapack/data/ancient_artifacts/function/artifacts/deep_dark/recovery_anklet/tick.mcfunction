execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled as @e[type=player, tag=recover_inv] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/init
execute store result score #keep_inv temp run function ancient_artifacts:utilities/gamerule/get_keep_inventory
execute unless score #keep_inv temp matches 1 as @e[type=player, tag=recover_inv] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/init
execute as @a[tag=recovered_item] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/effects/init
execute as @e[type=item_display, tag=recovery_effect] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/effects/run
execute as @a at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recoveries
