execute if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
function ancient_artifacts:artifact_chests/drop_loot {loot_table: "ancient_artifacts:dungeon_loot/nether_artifact"}
kill @e[type=#ancient_artifacts:technical, distance=..40, tag=mobspawn]
