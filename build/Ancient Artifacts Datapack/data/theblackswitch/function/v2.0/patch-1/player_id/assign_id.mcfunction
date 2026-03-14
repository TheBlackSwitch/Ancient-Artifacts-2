execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute if entity @s[tag=tbs.has_id] run return fail
execute if score @s tbs.ID matches 0.. run return fail
data modify storage theblackswitch:player_storage players append value {}
execute unless score #current tbs.ID matches 1.. run scoreboard players set #current tbs.ID 0
scoreboard players operation @s tbs.ID = #current tbs.ID
execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, [{text: "Assigned player ID "}, {score: {objective: "tbs.ID", name: "@s"}}, {text: " to player "}, {selector: "@s", color: "yellow"}]]
scoreboard players add #current tbs.ID 1
