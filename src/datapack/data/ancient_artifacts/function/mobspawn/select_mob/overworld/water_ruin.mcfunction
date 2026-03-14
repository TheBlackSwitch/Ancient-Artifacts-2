##Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:5,sky_check:false}

execute if score @s raycast_limit matches 399.. run return fail

##Select Mobs
execute store result score @s random run random value 1..12

execute if score @s random matches 1..11 run return run function ancient_artifacts:mobspawn/init_summon {min:0,max:2,mob:"minecraft:drowned",nbt:{},cap:5,range:35,TAG:"mobspawned"}
execute if score @s random matches 12 run return run function ancient_artifacts:mobspawn/init_summon {min:0,max:1,mob:"minecraft:drowned",nbt:{equipment:{mainhand:{id:"minecraft:trident",count:1}}},cap:5,range:35,TAG:"mobspawned"}
