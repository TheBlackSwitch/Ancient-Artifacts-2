execute unless score #current tbs.easing.callback_id matches 0.. run scoreboard players set #current tbs.easing.callback_id 0
execute store result storage theblackswitch:easing callback_item.id int 1 run scoreboard players operation @s tbs.easing.callback_id = #current tbs.easing.callback_id
data modify storage theblackswitch:easing callback_item.command set from storage theblackswitch:easing callback
data modify storage theblackswitch:easing callback_queue append from storage theblackswitch:easing callback_item
scoreboard players add #current tbs.easing.callback_id 1
