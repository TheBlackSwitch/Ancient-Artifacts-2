##block breaking
scoreboard players set .no_break temp 0
execute unless entity @s[tag=opened] on attacker unless entity @s[gamemode=creative] run scoreboard players set .no_break temp 1
execute if score .no_break temp matches 1 on attacker at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute if score .no_break temp matches 1 on attacker run tellraw @s [{"text":"You may want to open that before breaking it!","color":"red"}]
execute if score .no_break temp matches 1 run return run data remove entity @s attack
execute on attacker unless entity @s[gamemode=creative] as @e[type=interaction,tag=artifact_chest,dy=0] if data entity @s attack run scoreboard players add @s chest_break_progress 1
execute on attacker if entity @s[gamemode=creative] as @e[type=interaction,tag=artifact_chest,dy=0] if data entity @s attack run scoreboard players set @s chest_break_progress 4

execute if data entity @s attack run scoreboard players set @s repair_delay 10
execute if score @s repair_delay matches 1.. if score @s chest_break_progress matches 1.. run scoreboard players remove @s repair_delay 1
execute if score @s repair_delay matches 0 run scoreboard players remove @s chest_break_progress 1
execute if score @s repair_delay matches 0 run scoreboard players set @s repair_delay 10

execute if data entity @s attack unless entity @e[tag=break,distance=..0.6] run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:gunpowder",Count:1b,components:{"minecraft:item_model":"ancient_artifacts:item/air"}},Tags:[break]}
execute if score @s chest_break_progress matches 0 positioned ~ ~0.1 ~ align xyz run data modify entity @e[type=item_display,tag=break,limit=1,dy=0] item.components."minecraft:item_model" set value "ancient_artifacts:item/air"
execute if score @s chest_break_progress matches 1 positioned ~ ~0.1 ~ align xyz run data modify entity @e[type=item_display,tag=break,limit=1,dy=0] item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_1"
execute if score @s chest_break_progress matches 2 positioned ~ ~0.1 ~ align xyz run data modify entity @e[type=item_display,tag=break,limit=1,dy=0] item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_2"
execute if score @s chest_break_progress matches 3 positioned ~ ~0.1 ~ align xyz run data modify entity @e[type=item_display,tag=break,limit=1,dy=0] item.components."minecraft:item_model" set value "ancient_artifacts:block/breaking/progress_3"
execute if data entity @s attack if score @s chest_break_progress matches 4 positioned ~ ~0.5 ~ positioned ~ ~0.1 ~ align xyz run kill @e[type=item_display,tag=break,dy=0]
execute if data entity @s attack if score @s chest_break_progress matches 4 run setblock ~ ~0.005 ~ air
execute if data entity @s attack if score @s chest_break_progress matches 4 run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.8
execute if data entity @s attack if score @s chest_break_progress matches 4 run particle minecraft:block{block_state:"minecraft:stone"} ~ ~0.5 ~ 0.3 0.3 0.3 0 50 force
execute if data entity @s attack if score @s chest_break_progress matches 4 positioned ~ ~0.1 ~ align xyz run kill @e[type=item_display,tag=artifact_chest,dy=0]
execute if data entity @s attack if score @s chest_break_progress matches 4 run kill @s
execute if data entity @s attack run data remove entity @s attack
