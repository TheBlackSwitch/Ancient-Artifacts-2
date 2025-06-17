execute as @e[type=player,tag=recover_inv] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/init
execute as @a[tag=recovered_item] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/effects/init
execute as @e[type=item_display,tag=recovery_effect] at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/effects/run

execute as @a at @s run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recoveries