
execute unless entity @s[tag=recovery] run return fail
execute if entity @s[tag=recover_inv] run return fail
tag @s add recover_inv


#-------------------------------------------------------
## Store the inv data
#-------------------------------------------------------

execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage.path set value "recovery_inv"
data modify storage ancient_artifacts:temp player_storage.source set value "entity @s Inventory"
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage

data modify storage ancient_artifacts:temp player_storage.path set value "recovery_equip"
data modify storage ancient_artifacts:temp player_storage.source set value "entity @s equipment"
function #theblackswitch:__version__/player_storage/set_from with storage ancient_artifacts:temp player_storage

#-------------------------------------------------------
## Clear slots so it doesn't end up in the grave
#-------------------------------------------------------

# Xp
execute if entity @s[tag=recovery_xp]:
    execute store result score @s recovered_xp run data get entity @s XpLevel
    xp set @s 0 levels
    xp set @s 0 points

# Whole inventory
execute if entity @s[tag=recovery_4]:
    for i in range(27):
        item replace entity @s f'inventory.{i}' with minecraft:air

# Artifacts
execute if entity @s[tag=recovery_3,tag=!recovery_4]:
    for i in range(27):
        execute if items entity @s f'inventory.{i}' *[minecraft:custom_data~{artifact:true}]:
            item replace entity @s f'inventory.{i}' with minecraft:air

# Hotbar
execute if entity @s[tag=recovery_2]:
    for i in range(9):
        item replace entity @s f'container.{i}' with minecraft:air


# Armor
execute if entity @s[tag=recovery_1]:
    item replace entity @s armor.head with minecraft:air
    item replace entity @s armor.chest with minecraft:air
    item replace entity @s armor.legs with minecraft:air
    item replace entity @s armor.feet with minecraft:air