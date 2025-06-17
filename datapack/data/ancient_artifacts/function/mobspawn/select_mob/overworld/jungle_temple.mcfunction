##Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:10,sky_check:true}

execute if score @s raycast_limit matches 399.. run return fail

##Select Mobs
execute store result score @s random run random value 1..5

execute if score @s random matches 1..3 run function ancient_artifacts:mobspawn/init_summon {min:2,max:3,mob:"minecraft:zombie",nbt:{},cap:6,range:15,TAG:"mobspawned"}
execute if score @s random matches 4..5 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:skeleton",nbt:{equipment:{mainhand:{id:"minecraft:bow",count:1}}},cap:6,range:15,TAG:"mobspawned"}
