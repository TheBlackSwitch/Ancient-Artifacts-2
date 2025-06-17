execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

summon chest_minecart ~ ~ ~ {Tags:[temp_storage],NoGravity:1b,Invulnerable:1b}

item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.0 from entity @s container.9
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.1 from entity @s container.10
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.2 from entity @s container.11
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.3 from entity @s container.12
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.4 from entity @s container.13
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.5 from entity @s container.14
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.6 from entity @s container.15
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.7 from entity @s container.16
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.8 from entity @s container.17
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.9 from entity @s container.18
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.10 from entity @s container.19
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.11 from entity @s container.20
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.12 from entity @s container.21
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.13 from entity @s container.22
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.14 from entity @s container.23
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.15 from entity @s container.24
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.16 from entity @s container.25
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.17 from entity @s container.26
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.18 from entity @s container.27
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.19 from entity @s container.28
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.20 from entity @s container.29
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.21 from entity @s container.30
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.22 from entity @s container.31
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.23 from entity @s container.32
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.24 from entity @s container.33
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.25 from entity @s container.34
item replace entity @n[type=chest_minecart,distance=..1,tag=temp_storage] container.26 from entity @s container.35

##Store normal inv
data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.normal_inv",source:"entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items"}
function theblackswitch:player_storage/set_from with storage ancient_artifacts:temp player_storage

##Remove data incase there is no extra inv data
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
data remove entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items

##Move the extra inv into the minecart
data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.extra_inv",result:"entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items"}
function theblackswitch:player_storage/insert with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage

function ancient_artifacts:artifacts/end/storing_circlet/move_minecart_to_inv

##Reset and kill the temp minecart
data remove entity @n[type=chest_minecart,distance=..1,tag=temp_storage] Items
kill @e[type=chest_minecart,distance=..1,tag=temp_storage]