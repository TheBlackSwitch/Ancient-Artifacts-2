scoreboard players add @s mobs_necromanced 1
execute if block ~ ~ ~ water run return run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/summon_water
execute if dimension minecraft:the_nether run return run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/summon_nether
execute if biome ~ ~ ~ desert run return run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/summon_desert
execute if biome ~ ~ ~ #spawns_snow_foxes run return run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/summon_snow
execute if biome ~ ~ ~ #ancient_artifacts:swamp run return run function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/summon_swamp
function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/summon_normal
