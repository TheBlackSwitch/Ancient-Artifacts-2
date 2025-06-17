execute as @a unless score @s extra_inv_open matches 0..1 run scoreboard players set @s extra_inv_open 0

execute as @a if score @s extra_inv_open matches 1 run function ancient_artifacts:artifacts/end/storing_circlet/fill_gui/run
execute as @a if items entity @s player.cursor gunpowder[custom_data={storing_circlet_gui:true}] run item replace entity @s player.cursor with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{storing_circlet_gui:true}}}}]
execute as @a if score @s extra_inv_open matches 0 run clear @s gunpowder[custom_data={storing_circlet_gui:true}]
