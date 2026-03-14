# Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:15,sky_check:true}

execute if score @s raycast_limit matches 399.. run return fail

# Select Mobs
execute store result score @s random run random value 1..5

execute if score @s random matches 1..4 run return run function ancient_artifacts:mobspawn/init_summon {min:2,max:3,mob:"minecraft:husk",nbt:{},cap:6,range:25,TAG:"mobspawned"}
execute if score @s random matches 5 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:creeper",nbt:{},cap:6,range:25,TAG:"mobspawned"}
