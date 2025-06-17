execute unless score @s animation matches 0.. if entity @p[distance=..5] store result score @s animation run random value 7..12
execute if score @s animation matches 7 run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 2
execute if score @s animation matches 7 run data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:entity/skeleton/active"
execute if score @s animation matches 1..5 run playsound block.beacon.power_select hostile @a ~ ~ ~ 5 0
execute if score @s animation matches 3..5 run particle dust{color:[0.8, 0.0, 0.0], scale:2} ~ ~ ~ 0.1 0.5 0.1 0 20 force
execute if score @s animation matches 3..5 run particle minecraft:shriek{delay:0} ~ ~ ~ 0.1 0.1 0.1 0 1
execute if score @s animation matches 3..5 run particle minecraft:shriek{delay:10} ~ ~ ~ 0.1 0.1 0.1 0 1
execute if score @s animation matches 1..2 run particle dust{color:[0.8, 0.0, 0.0], scale:2} ~ ~ ~ 0.1 0.5 0.1 0 20 force
execute if score @s animation matches 0 store result score @s random run random value 1..3
execute if score @s animation matches 0 run playsound entity.wither.break_block hostile @a ~ ~ ~ 1 0.7
execute if entity @s[scores={animation=0,random=1}] run summon skeleton ~ ~ ~ {Tags:[buffed,super_buffed]}
execute if entity @s[scores={animation=0,random=2}] run summon wither_skeleton ~ ~ ~ {Tags:[buffed,super_buffed]}
execute if entity @s[scores={animation=0,random=3}] run summon stray ~ ~ ~ {Tags:[buffed,super_buffed]}
execute if score @s animation matches 0 run kill @s
scoreboard players remove @s animation 1