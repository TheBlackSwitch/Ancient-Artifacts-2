##Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:20,sky_check:false}

execute if score @s raycast_limit matches 399.. run return fail

##Select Mobs
execute store result score @s random run random value 1..4

execute if score @s random matches 1..3 run function ancient_artifacts:mobspawn/init_summon {min:2,max:5,mob:"minecraft:pillager",nbt:{equipment:{mainhand:{id:"minecraft:crossbow",count:1}}},cap:6,range:50,TAG:"mobspawned"}
execute if score @s random matches 4 run function ancient_artifacts:mobspawn/init_summon {min:0,max:1,mob:"minecraft:vindicator",nbt:{equipment:{mainhand:{id:"minecraft:stone_axe",count:1}}},cap:6,range:50,TAG:"mobspawned"}
