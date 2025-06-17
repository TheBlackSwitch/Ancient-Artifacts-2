summon chest_minecart ~ ~ ~ {Tags:[temp_storage],NoGravity:1b,Invulnerable:1b}

execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.extra_inv",result:"entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items"}
function theblackswitch:player_storage/insert with storage ancient_artifacts:temp player_storage

function ancient_artifacts:artifacts/end/storing_circlet/move_inv_to_minecart

##Store current inv
data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.extra_inv",source:"entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items"}
function theblackswitch:player_storage/set_from with storage ancient_artifacts:temp player_storage

##Remove data incase there is no extra inv data
data remove entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items

##Move the normal inv into the minecart
data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.normal_inv",result:"entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items"}
function theblackswitch:player_storage/insert with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage

item replace entity @s inventory.0 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.0
item replace entity @s inventory.1 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.1
item replace entity @s inventory.2 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.2
item replace entity @s inventory.3 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.3
item replace entity @s inventory.4 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.4
item replace entity @s inventory.5 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.5
item replace entity @s inventory.6 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.6
item replace entity @s inventory.7 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.7
item replace entity @s inventory.8 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.8
item replace entity @s inventory.9 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.9
item replace entity @s inventory.10 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.10
item replace entity @s inventory.11 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.11
item replace entity @s inventory.12 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.12
item replace entity @s inventory.13 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.13
item replace entity @s inventory.14 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.14
item replace entity @s inventory.15 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.15
item replace entity @s inventory.16 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.16
item replace entity @s inventory.17 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.17
item replace entity @s inventory.18 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.18
item replace entity @s inventory.19 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.19
item replace entity @s inventory.20 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.20
item replace entity @s inventory.21 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.21
item replace entity @s inventory.22 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.22
item replace entity @s inventory.23 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.23
item replace entity @s inventory.24 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.24
item replace entity @s inventory.25 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.25
item replace entity @s inventory.26 from entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.26

##Reset and kill the temp minecart
data remove entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items
kill @e[type=chest_minecart,distance=..1,tag=temp_storage]