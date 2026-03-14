##Random Pos
scoreboard players set @s raycast_limit 0
function ancient_artifacts:mobspawn/set_pos {range:12,sky_check:false}

execute if score @s raycast_limit matches 399.. run return fail

##Select Mobs
execute store result score @s random run random value 1..3

#basalt deltas
execute if score @s[tag=basalt] random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:3,mob:"minecraft:magma_cube",nbt:{},cap:4,range:15,TAG:"mobspawned"}
execute if score @s[tag=basalt] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:blaze",nbt:{},cap:4,range:25,TAG:"mobspawned"}

#crimson forrest
execute if score @s[tag=crimson] random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:3,mob:"minecraft:blaze",nbt:{},cap:6,range:25,TAG:"mobspawned"}
execute if score @s[tag=crimson] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min:0,max:1,mob:"minecraft:hoglin",nbt:{},cap:6,range:25,TAG:"mobspawned"}

#soulsand valley
execute if score @s[tag=soul] random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:3,mob:"minecraft:skeleton",nbt:{equipment:{mainhand:{id:"minecraft:bow",count:1}}},cap:5,range:15,TAG:"mobspawned"}
execute if score @s[tag=soul] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:wither_skeleton",nbt:{equipment:{mainhand:{id:"minecraft:stone_sword",count:1}}},cap:5,range:25,TAG:"mobspawned"}

#warped forrest
execute if score @s[tag=warped] random matches 1..2 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:3,mob:"minecraft:ender_mite",nbt:{},cap:5,range:25,TAG:"mobspawned"}
execute if score @s[tag=warped] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:wither_skeleton",nbt:{equipment:{mainhand:{id:"minecraft:stone_sword",count:1}}},cap:5,range:25,TAG:"mobspawned"}

#nether wastes
execute if score @s[tag=wastes] random matches 1 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:3,mob:"minecraft:magam_cube",nbt:{},cap:4,range:15,TAG:"mobspawned"}
execute if score @s[tag=wastes] random matches 2 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:blaze",nbt:{},cap:4,range:25,TAG:"mobspawned"}
execute if score @s[tag=wastes] random matches 3 run return run function ancient_artifacts:mobspawn/init_summon {min:1,max:2,mob:"minecraft:wither_skeleton",nbt:{equipment:{mainhand:{id:"minecraft:stone_sword",count:1}}},cap:4,range:25,TAG:"mobspawned"}