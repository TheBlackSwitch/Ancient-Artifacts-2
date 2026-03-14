reload
kill @e[type=item_display, tag=cutscene]
tag @e remove cutscene
scoreboard players set @s plot_gamemode 1
data modify entity @e[tag=dungeon_entrance, limit=1, sort=nearest] data.statue_phase set value 0
scoreboard players set @e[tag=dungeon_entrance] animation 0
tag @e remove animate_statue
kill @e[tag=artifact_golem]
