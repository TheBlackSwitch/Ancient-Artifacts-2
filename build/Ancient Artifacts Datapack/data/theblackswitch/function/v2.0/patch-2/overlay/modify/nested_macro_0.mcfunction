$execute unless data storage theblackswitch:overlay data[{id:"$(id)"}] run return run execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["",{"text":"[Debug]: ","color":"yellow","bold":true},[{"text":"Failed to modify overlay '"},{"nbt":"id","storage":"theblackswitch:overlay"},{"text":"', no such overlay!"}]]
$data modify storage theblackswitch:overlay data[{id:"$(id)"}].texture set from storage theblackswitch:overlay texture
$execute store result score #version temp run data get storage theblackswitch:overlay data[{id:"$(id)"}].version
$execute store result storage theblackswitch:overlay data[{id:"$(id)"}].version int 1 run scoreboard players add #version temp 1
$execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["",{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Successfully modified overlay $(id)!"}]
