scoreboard players set @s deactivate 0
execute if score @s artifact_slot_1 matches 1.. run scoreboard players set @s deactivate 1
execute if score @s artifact_slot_2 matches 1.. run scoreboard players set @s deactivate 1
execute if score @s artifact_slot_3 matches 1.. run scoreboard players set @s deactivate 1
execute if score @s deactivate matches 0 run tellraw @s {text: "No active artifacts!", color: "red"}
execute if score @s deactivate matches 0 at @s run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1 0.7
execute if score @s deactivate matches 1 run scoreboard players set @s artifact_slot_1 0
execute if score @s deactivate matches 1 run scoreboard players set @s artifact_slot_2 0
execute if score @s deactivate matches 1 run scoreboard players set @s artifact_slot_3 0
execute if score @s deactivate matches 1 at @s run particle minecraft:dust{color: [1.0d, 0.0d, 0.0d], scale: 1} ~ ~ ~ 0.3 0.7 0.3 0 50 force
execute if score @s deactivate matches 1 at @s run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 1 1
execute if score @s deactivate matches 1 at @s run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1
