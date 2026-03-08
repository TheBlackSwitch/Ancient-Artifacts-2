execute if dimension minecraft:the_end run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
execute if dimension minecraft:the_end run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end
execute if dimension minecraft:the_end if score @s luck matches 1 if predicate theblackswitch:__version__/__patch__/rand/10 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if dimension minecraft:the_end if score @s luck matches 2 if predicate theblackswitch:__version__/__patch__/rand/20 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if dimension minecraft:the_end if score @s luck matches 3 if predicate theblackswitch:__version__/__patch__/rand/30 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_luck
execute if dimension minecraft:the_end run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/end_artifact_unlucky

execute if dimension minecraft:the_nether run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/nether
execute if dimension minecraft:the_nether run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/nether
execute if dimension minecraft:the_nether if score @s luck matches 1 if predicate theblackswitch:__version__/__patch__/rand/10 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/nether_luck
execute if dimension minecraft:the_nether if score @s luck matches 2 if predicate theblackswitch:__version__/__patch__/rand/20 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/nether_luck
execute if dimension minecraft:the_nether if score @s luck matches 3 if predicate theblackswitch:__version__/__patch__/rand/30 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/nether_luck
execute if dimension minecraft:the_nether run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/nether_artifact_unlucky

execute if biome ~ ~ ~ deep_dark run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/deep_dark
execute if biome ~ ~ ~ deep_dark run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/deep_dark
execute if biome ~ ~ ~ deep_dark if score @s luck matches 1 if predicate theblackswitch:__version__/__patch__/rand/10 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/deep_dark_luck
execute if biome ~ ~ ~ deep_dark if score @s luck matches 2 if predicate theblackswitch:__version__/__patch__/rand/20 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/deep_dark_luck
execute if biome ~ ~ ~ deep_dark if score @s luck matches 3 if predicate theblackswitch:__version__/__patch__/rand/30 run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/deep_dark_luck
execute if biome ~ ~ ~ deep_dark run return run loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/deep_dark_artifact_unlucky

loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld
loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld
loot spawn ^ ^1.5 ^0.2 loot ancient_artifacts:dungeon_loot/overworld_artifact_unlucky