advancement revoke @s from ancient_artifacts:trigger/shoot_entity_no_enchant
execute if entity @s[tag=recycler_1] if predicate theblackswitch:v2.0/patch-1/rand/35 run function ancient_artifacts:artifacts/deep_dark/recycling_crystal/give_arrow
execute if entity @s[tag=recycler_2] if predicate theblackswitch:v2.0/patch-1/rand/50 run function ancient_artifacts:artifacts/deep_dark/recycling_crystal/give_arrow
execute if entity @s[tag=recycler_3] if predicate theblackswitch:v2.0/patch-1/rand/65 run function ancient_artifacts:artifacts/deep_dark/recycling_crystal/give_arrow
