loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if predicate theblackswitch:v2.0/patch-2/rand/10 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:artifacts/end
execute unless score @s luck matches 1.. run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
execute if score @s luck matches 1 if predicate theblackswitch:v2.0/patch-2/rand/10 run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if score @s luck matches 1 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
execute if score @s luck matches 2 if predicate theblackswitch:v2.0/patch-2/rand/20 run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if score @s luck matches 2 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
execute if score @s luck matches 3 if predicate theblackswitch:v2.0/patch-2/rand/30 run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if score @s luck matches 3 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
