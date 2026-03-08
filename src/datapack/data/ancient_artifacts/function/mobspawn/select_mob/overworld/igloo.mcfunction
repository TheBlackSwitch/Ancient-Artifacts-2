##Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:10,sky_check:false}

execute if score @s raycast_limit matches 399.. run return fail

##Select Mobs
execute store result score @s random run random value 1..3

execute if score @s random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:5,mob:"minecraft:stray",nbt:{equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:leather_helmet",count:1}}},cap:3,range:25,TAG:"mobspawned"}
execute if score @s random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:zombie",nbt:{equipment:{head:{id:"minecraft:leather_helmet",count:1}}},cap:7,range:25,TAG:"mobspawned"}