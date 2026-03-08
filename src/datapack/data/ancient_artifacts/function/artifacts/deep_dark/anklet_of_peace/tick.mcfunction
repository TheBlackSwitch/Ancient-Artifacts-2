

execute if score #10 tbs.slow_tick matches 10 as @e[type=#ancient_artifacts:hostile,tag=!smithed.entity,tag=!spawned] at @s if entity @a[distance=..40,tag=despawner] run \
    function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/despawnable