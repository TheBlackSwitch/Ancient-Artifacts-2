$execute unless items entity @s container.$(Slot) * run return fail
summon marker ~ ~ ~ {Tags: ["item_motion"]}
execute at @s rotated as @s in overworld positioned 0.0 0.0 0.0 positioned ^ ^ ^0.25 run tp @n[tag=item_motion] ~ ~ ~
data modify storage ancient_artifacts:item X set from entity @n[tag=item_motion] Pos[0]
execute store result score .motion_y temp run data get entity @n[tag=item_motion] Pos[1] 1000
execute store result storage ancient_artifacts:item Y double 0.001 run scoreboard players add .motion_y temp 200
data modify storage ancient_artifacts:item Z set from entity @n[tag=item_motion] Pos[2]
$data modify storage ancient_artifacts:item Item set from entity @s Inventory[{Slot:$(Slot)b}]
kill @e[tag=item_motion]
function ancient_artifacts:artifacts/end/storing_circlet/summon_item with storage ancient_artifacts:item
$item replace entity @s container.$(Slot) with minecraft:air
tag @n[tag=item_motion] remove item_motion
