

execute if score .10 slow_tick matches 10 as @e[type=#ancient_artifacts:miners_crown_despawn,tag=!spawned] at @s if entity @a[distance=..40,tag=despawner] run \
    function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/despawnable