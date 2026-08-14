$execute store success score #success temp run data remove storage theblackswitch:overlay data[{id:"$(id)"}]
$execute if score #success temp matches 1 if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["",{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Successfully removed overlay $(id)!"}]
$execute if score #success temp matches 0 if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["",{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Overlay $(id) was already removed!"}]
