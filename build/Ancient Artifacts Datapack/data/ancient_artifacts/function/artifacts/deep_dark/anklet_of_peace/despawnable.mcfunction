execute if data entity @s {PersistenceRequired: 1b} run tag @s add spawned
execute if data entity @s {PersistenceRequired: 1b} run return fail
execute if entity @a[tag=despawner_4, distance=..40] if predicate theblackswitch:v2.0/patch-4/rand/45 run return run function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/despawn
execute if entity @a[tag=despawner_3, distance=..40] if predicate theblackswitch:v2.0/patch-4/rand/35 run return run function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/despawn
execute if entity @a[tag=despawner_2, distance=..40] if predicate theblackswitch:v2.0/patch-4/rand/25 run return run function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/despawn
execute if entity @a[tag=despawner_1, distance=..40] if predicate theblackswitch:v2.0/patch-4/rand/15 run return run function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/despawn
tag @s add spawned
