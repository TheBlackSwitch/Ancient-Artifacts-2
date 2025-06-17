execute unless entity @a run return run schedule function theblackswitch:version_control/init_loop 1t
data modify storage theblackswitch:versions compatable set value true

data modify storage theblackswitch:temp packs set from storage theblackswitch:versions packs
function theblackswitch:version_control/loop

execute if data storage theblackswitch:versions {compatable:true} run return fail

title @a times 0s 20s 1s
execute as @a at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
title @a title [{"text": "ERROR","color": "red"}]
title @a subtitle [{"text": "Datapacks are incompatable: See chat!","color":"dark_red"}]