
# don't drop when graves compat
execute if function ancient_artifacts:__compat__/graves_lullaby/is_enabled run return fail

# don't drop when recovery anklet
execute if entity @s[tag=recovery_4] run return fail

summon chest_minecart ~ ~ ~ {Tags:[temp_storage],NoGravity:1b,Invulnerable:1b}

execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

execute if entity @s[scores={extra_inv_open=0}] run data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.extra_inv",result:"entity @n[type=chest_minecart,tag=temp_storage] Items"}
execute if entity @s[scores={extra_inv_open=0}] run function #theblackswitch:__version__/player_storage/insert with storage ancient_artifacts:temp player_storage

execute if entity @s[scores={extra_inv_open=1}] run data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.normal_inv",result:"entity @n[type=chest_minecart,tag=temp_storage] Items"}
execute if entity @s[scores={extra_inv_open=1}] run function #theblackswitch:__version__/player_storage/insert with storage ancient_artifacts:temp player_storage

function ancient_artifacts:artifacts/end/storing_circlet/reset

data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.extra_inv"}
function #theblackswitch:__version__/player_storage/remove with storage ancient_artifacts:temp player_storage

data modify storage ancient_artifacts:temp player_storage merge value {path:"storing_circlet.normal_inv"}
function #theblackswitch:__version__/player_storage/remove with storage ancient_artifacts:temp player_storage

data remove storage ancient_artifacts:temp player_storage

kill @e[tag=temp_storage]