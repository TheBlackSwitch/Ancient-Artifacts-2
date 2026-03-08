loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld
loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld_luck
execute if predicate theblackswitch:__version__/__patch__/rand/10 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:artifacts/overworld


execute unless score @s luck matches 1.. run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld

execute if score @s luck matches 1 if predicate theblackswitch:__version__/__patch__/rand/10 run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld_luck
execute if score @s luck matches 1 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld

execute if score @s luck matches 2 if predicate theblackswitch:__version__/__patch__/rand/20 run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld_luck
execute if score @s luck matches 2 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld

execute if score @s luck matches 3 if predicate theblackswitch:__version__/__patch__/rand/30 run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld_luck
execute if score @s luck matches 3 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld