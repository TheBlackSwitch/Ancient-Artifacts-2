##Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:8,sky_check:false}

execute if score @s raycast_limit matches 399.. run return fail

##Select Mob
execute store result score @s random run random value 1..13

execute if score @s random matches 1..2 run function ancient_artifacts:mobspawn/init_summon {min:1,max:5,mob:"minecraft:cave_spider",nbt:{},cap:5,range:40,TAG:"buffed"}
execute if score @s random matches 3..4 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:silver_fish",nbt:{},cap:5,range:40,TAG:"buffed"}
execute if score @s random matches 5..6 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:zombie",nbt:{},cap:5,range:40,TAG:"buffed"}
execute if score @s random matches 7..8 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:husk",nbt:{},cap:5,range:40,TAG:"buffed"}
execute if score @s random matches 9..40 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:skeleton",nbt:{equipment:{mainhand:{id:"minecraft:bow",count:1}}},cap:5,range:40,TAG:"buffed"}
execute if score @s random matches 11..12 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:stray",nbt:{equipment:{mainhand:{id:"minecraft:bow",count:1}}},cap:5,range:40,TAG:"buffed"}
execute if score @s random matches 13 run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:bogged",nbt:{equipment:{mainhand:{id:"minecraft:bow",count:1}}},cap:5,range:40,TAG:"buffed"}