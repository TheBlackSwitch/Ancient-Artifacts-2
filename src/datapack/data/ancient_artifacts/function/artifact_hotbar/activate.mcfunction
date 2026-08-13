advancement grant @s only ancient_artifacts:main/equip_artifact

#reset modifiers from previous artifacts
function ancient_artifacts:artifacts/reset


##Activate Artifact If not sneaking

execute unless predicate theblackswitch:__version__/__patch__/movement_check/sneak:
    #get the start id for this artifact
    execute store result score .1 temp run data get entity @s SelectedItem.components."minecraft:custom_data".data.start
    execute store result storage ancient_artifacts:artifact start int 1 run scoreboard players get .1 temp

    #calc the end id for this artifact
    execute store result score .2 temp run data get entity @s SelectedItem.components."minecraft:custom_data".data.max
    scoreboard players operation .2 temp += .1 temp
    scoreboard players remove .2 temp 1
    execute store result storage ancient_artifacts:artifact max int 1 run scoreboard players get .2 temp

    ##get level
    execute store result score .level temp run data get entity @s SelectedItem.components."minecraft:custom_data".data.level

    #check if there is an artifact active of the same type and if so, deactivates it
    function ancient_artifacts:artifact_hotbar/check_same_type with storage ancient_artifacts:artifact

    #cycle slots
    execute unless score @s artifact_slot_1 matches 0 unless score @s artifact_slot_2 matches 0 store result score @s artifact_slot_3 run scoreboard players get @s artifact_slot_2
    execute unless score @s artifact_slot_1 matches 0 store result score @s artifact_slot_2 run scoreboard players get @s artifact_slot_1
    #set slot
    execute store result score @s artifact_slot_1 run data get entity @s SelectedItem.components."minecraft:custom_data".data.level
    scoreboard players operation @s artifact_slot_1 += .1 temp
    scoreboard players remove @s artifact_slot_1 1

execute if score @s artifact_slot_2 matches 155 run function ancient_artifacts:artifact_hotbar/move_focus_medal
execute if score @s artifact_slot_1 matches 155 run tag @s add focused

##Init Activate Animation

execute unless predicate theblackswitch:__version__/__patch__/movement_check/sneak:
    execute if score .1 temp matches 155 at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2
    execute if score .1 temp matches 155 at @s run playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 0.6 1.4
    execute if score .1 temp matches 155 at @s run playsound block.beacon.power_select master @a ~ ~ ~ 1 0.8

    execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~ 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:100}
    execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~30 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:100}
    execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~-30 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:100}
    execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~60 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:100}
    execute if score .1 temp matches 155 at @s positioned ~ ~0.75 ~ rotated ~-60 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:100}


    execute at @s run playsound minecraft:item.armor.equip_netherite block @a ~ ~ ~
    execute at @s run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1
    execute at @s run summon minecraft:item_display ~ ~ ~ {Tags:[artifact_activate_particles,INIT]}
    execute at @s run particle minecraft:firework ~ ~0.75 ~ 0 0 0 0.2 20 normal

    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:1}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add common
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:2}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add uncommon
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:3}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add rare
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:4}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add expensive
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:5}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add unique
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:1b}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add common
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:2b}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add uncommon
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:3b}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add rare
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:4b}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add expensive
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:5b}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add unique
    execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{data:{rarity:6b}}}}}] run tag @e[type=item_display,tag=artifact_activate_particles,tag=INIT] add divine

tag @e[type=item_display,tag=artifact_activate_particles] remove INIT

##Deactivate All If sneaking
execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak:
    #check for active artifacts
    scoreboard players set @s deactivate 0
    execute if score @s artifact_slot_1 matches 1.. run scoreboard players set @s deactivate 1
    execute if score @s artifact_slot_2 matches 1.. run scoreboard players set @s deactivate 1
    execute if score @s artifact_slot_3 matches 1.. run scoreboard players set @s deactivate 1

    #no active artifacts
    execute if score @s deactivate matches 0 run tellraw @s {"text":"No active artifacts!","color":"red"}
    execute if score @s deactivate matches 0 at @s run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1 0.7

    #deactivate artifacts (only if any active)
    execute if score @s deactivate matches 1 run scoreboard players set @s artifact_slot_1 0
    execute if score @s deactivate matches 1 run scoreboard players set @s artifact_slot_2 0
    execute if score @s deactivate matches 1 run scoreboard players set @s artifact_slot_3 0
    execute if score @s deactivate matches 1 at @s run particle minecraft:dust{color:[1.0, 0.0, 0.0],scale:1} ~ ~ ~ 0.3 0.7 0.3 0 50 force
    execute if score @s deactivate matches 1 at @s run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 1 1
    execute if score @s deactivate matches 1 at @s run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1

##Deactivation Crown
function ancient_artifacts:artifacts/overworld/deactivation_crown/deactivate


##Focus medal Reset
execute unless score @s artifact_slot_1 matches 155 run tag @s remove focused

##Update changes on hotbar
execute at @s run function ancient_artifacts:artifact_hotbar/show

function ancient_artifacts:artifacts/late_reset