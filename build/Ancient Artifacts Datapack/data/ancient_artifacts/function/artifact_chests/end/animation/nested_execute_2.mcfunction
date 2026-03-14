execute if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
playsound minecraft:block.shulker_box.close block @a ~ ~ ~ 1 0.8
function ancient_artifacts:artifact_chests/drop_loot_end {loot_table: "ancient_artifacts:dungeon_loot/end_artifact"}
kill @e[type=#ancient_artifacts:technical, distance=..40, tag=mobspawn]
