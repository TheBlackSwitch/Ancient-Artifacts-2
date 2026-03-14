kill @e[type=#ancient_artifacts:technical, distance=..40, tag=mobspawn]
execute on target if score @s luck matches 1.. run scoreboard players add @s lucky_chests_opened 1
