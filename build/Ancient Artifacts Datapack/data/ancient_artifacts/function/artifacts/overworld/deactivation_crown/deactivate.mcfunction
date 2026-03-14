execute if score @s artifact_slot_1 matches -1 run scoreboard players operation @s artifact_slot_1 = @s prev_artifact_slot_1
execute if score @s artifact_slot_2 matches -1 run scoreboard players operation @s artifact_slot_2 = @s prev_artifact_slot_2
execute if score @s artifact_slot_3 matches -1 run scoreboard players operation @s artifact_slot_3 = @s prev_artifact_slot_3
execute if entity @s[tag=deactivated_1, scores={artifact_slot_count=2}] run scoreboard players operation @s prev_artifact_slot_2 = @s artifact_slot_2
execute if entity @s[tag=deactivated_1, scores={artifact_slot_count=2}] run scoreboard players set @s artifact_slot_2 -1
execute if entity @s[tag=deactivated_1, scores={artifact_slot_count=3}] run scoreboard players operation @s prev_artifact_slot_3 = @s artifact_slot_3
execute if entity @s[tag=deactivated_1, scores={artifact_slot_count=3}] run scoreboard players set @s artifact_slot_3 -1
execute if entity @s[tag=deactivated_2] run scoreboard players set @s artifact_slot_2 -1
execute if entity @s[tag=deactivated_2] run scoreboard players operation @s prev_artifact_slot_2 = @s artifact_slot_2
execute if entity @s[tag=deactivated_2, scores={artifact_slot_count=2}] run scoreboard players set @s artifact_slot_1 -1
execute if entity @s[tag=deactivated_2, scores={artifact_slot_count=2}] run scoreboard players operation @s prev_artifact_slot_1 = @s artifact_slot_1
execute if entity @s[tag=deactivated_2, scores={artifact_slot_count=3}] run scoreboard players set @s artifact_slot_3 -1
execute if entity @s[tag=deactivated_2, scores={artifact_slot_count=3}] run scoreboard players operation @s prev_artifact_slot_3 = @s artifact_slot_3
execute if entity @s[tag=deactivated_3] run scoreboard players set @s artifact_slot_1 -1
execute if entity @s[tag=deactivated_3] run scoreboard players operation @s prev_artifact_slot_1 = @s artifact_slot_1
execute if entity @s[tag=deactivated_3] run scoreboard players set @s artifact_slot_2 -1
execute if entity @s[tag=deactivated_3] run scoreboard players operation @s prev_artifact_slot_2 = @s artifact_slot_2
execute if entity @s[tag=deactivated_3, scores={artifact_slot_count=3}] run scoreboard players set @s artifact_slot_3 -1
execute if entity @s[tag=deactivated_3, scores={artifact_slot_count=3}] run scoreboard players operation @s prev_artifact_slot_3 = @s artifact_slot_3
