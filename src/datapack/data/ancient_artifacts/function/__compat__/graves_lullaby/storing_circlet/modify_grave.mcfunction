# Add the storing circlet inventory to the grave (one tick later so we can assure the grave has spawned already)

# Get the player id
execute store result storage ancient_artifacts:temp player_storage.player_id int 1:
    scoreboard players operation #search tbs.ID = @s tbs.ID

# Check if the extra inv is open (so we know which inventory should go into the grave)
scoreboard players operation #inv_open temp = @s extra_inv_open

# get the player ID from graves
scoreboard players operation #grave_id temp = @s utils.player.id

execute positioned ~0.5 ~0.5 ~0.5 as @e[type=interaction,tag=graves.grave,predicate=ancient_artifacts:matches_grave_id,limit=1,sort=nearest,distance=..2] on passengers at @s:
    execute unless entity @s[type=marker] run return fail

    # Yipeeeeeee, we've found the grave
    scoreboard players set #found_grave temp 1
        
    # Get the storing circlet inv from the player storage
    data modify storage ancient_artifacts:temp player_storage.path set value 'storing_circlet'
    data modify storage ancient_artifacts:temp player_storage.result set value 'ancient_artifacts:player storing_circlet'
    function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage

    say Inventory data:
    tellraw @a {"nbt": "storing_circlet","storage":"ancient_artifacts:player"}

    # move the right inv into the grave
    execute if score #inv_open temp matches 0 run data modify entity @s data.Inventory append from storage ancient_artifacts:player storing_circlet.extra_inv[]
    execute if score #inv_open temp matches 1 run data modify entity @s data.Inventory append from storage ancient_artifacts:player storing_circlet.normal_inv[]

    # Delete any data from storing circlet
    data modify storage ancient_artifacts:temp player_storage.path set value 'storing_circlet'
    function #theblackswitch:__version__/player_storage/remove with storage ancient_artifacts:temp player_storage