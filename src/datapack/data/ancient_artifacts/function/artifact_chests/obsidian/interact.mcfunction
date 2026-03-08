
execute if entity @s[tag=opened] run return fail
execute unless data entity @s interaction run return fail
execute if score @s animation matches 1.. run return fail

tag @s add checked
data modify entity @s response set value 1b

#-------------------------------------------------------
## First amethyst Interaction
#-------------------------------------------------------

execute:
    # ===== HOLDING AMETHYST =====

    execute on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed:{ignore:{crafting:true}}},!custom_data~{compound:true}] as @e[type=interaction,limit=1,sort=nearest,tag=!opened] run return run scoreboard players add @s amethyst_count 1

    # ===== HOLDING NO AMETHYST =====

    playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
    execute on target run data modify storage smithed.actionbar:input message set value {json:{"text": "It seems like an amethyst shard is needed...","color": "light_purple"},priority:"notification"}
    execute on target run function #smithed.actionbar:message
    execute positioned ~ ~-0.5 ~ run data remove entity @s interaction

#-------------------------------------------------------
## Handle shard insertion
#-------------------------------------------------------

execute if score @s amethyst_count matches 1 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed:{ignore:{crafting:true}}},!custom_data~{compound:true}]:
    execute as @e[type=interaction,limit=1,sort=nearest,tag=!opened]:
        particle minecraft:dust{color:[1.0,0.0,1.0],scale:1} ~ ~ ~ 0.3 0.3 0.3 1 15 force
        item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active_1"]}}
        playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.6
    execute if predicate ancient_artifacts:survival run clear @s amethyst_shard[!custom_data~{smithed:{ignore:{crafting:true}}},!custom_data~{compound:true}] 1

execute if score @s amethyst_count matches 2 on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed:{ignore:{crafting:true}}},!custom_data~{compound:true}]:
    execute as @e[type=interaction,limit=1,sort=nearest,tag=!opened]:
        particle minecraft:dust{color:[1.0,0.0,1.0],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 15 force
        item modify entity @e[type=item_display,tag=artifact_chest,sort=nearest,limit=1] container.0 {function:"set_custom_model_data",strings:{mode:"replace_all",values:["active_2"]}}
        playsound entity.ender_eye.death block @a ~ ~ ~ 1 1.7
    execute if predicate ancient_artifacts:survival run clear @s amethyst_shard[!custom_data~{smithed:{ignore:{crafting:true}}},!custom_data~{compound:true}] 1

execute if score @s amethyst_count matches 3 run scoreboard players set @s animation 35
