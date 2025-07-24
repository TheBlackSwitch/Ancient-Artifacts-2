scoreboard players operation .search golemID = @s golemID


execute if score @s animation matches 1.. at @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=spawn_pos,limit=1,sort=nearest] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 0 20 force
execute if score @s animation matches 30.. at @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=spawn_pos,limit=1,sort=nearest] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 0 20 force

execute if score @s animation matches 10..19 run tp @s ~ ~0.05 ~
execute if score @s animation matches 20..24 run tp @s ~ ~0.01 ~
execute if score @s animation matches 25..39 run tp @s ~ ~0.08 ~
execute if score @s animation matches 40..44 run tp @s ~ ~0.14 ~
execute if score @s animation matches 45..55 run tp @s ~ ~0.05 ~

execute if score @s animation matches 1 run playsound minecraft:entity.warden.emerge hostile @a ~ ~2 ~ 1 2
execute if score @s animation matches 10 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 25 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 30 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0
execute if score @s animation matches 50 run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~2 ~ 1 0

execute if score @s animation matches 20 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 20 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8
execute if score @s animation matches 34 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 34 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8
execute if score @s animation matches 43 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 43 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8

execute if score @s animation matches 1 run particle gust_emitter_small ~ ~3.5 ~ 0.2 0.2 0.2 0 2
execute if score @s animation matches 1 run data merge entity @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=body,limit=1,sort=nearest] {brightness:{block:8,sky:0}}
execute if score @s animation matches 1 run data merge entity @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=head,limit=1,sort=nearest] {brightness:{block:8,sky:0}}
execute if score @s animation matches 1 run data merge entity @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] {brightness:{block:8,sky:0}}
execute if score @s animation matches 1 run data merge entity @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] {brightness:{block:8,sky:0}}
execute if score @s animation matches 1 run data merge entity @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=leg_l,limit=1,sort=nearest] {brightness:{block:8,sky:0}}
execute if score @s animation matches 1 run data merge entity @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=leg_r,limit=1,sort=nearest] {brightness:{block:8,sky:0}}

execute if score @s animation matches 10 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:90000,yRot:150000}
execute if score @s animation matches 23 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:81000,yRot:135000}
execute if score @s animation matches 25 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:72000,yRot:120000}
execute if score @s animation matches 27 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:63000,yRot:105000}
execute if score @s animation matches 29 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:54000,yRot:90000}
execute if score @s animation matches 31 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:45000,yRot:75000}
execute if score @s animation matches 33 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:36000,yRot:60000}
execute if score @s animation matches 35 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:27000,yRot:45000}
execute if score @s animation matches 37 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:18000,yRot:30000}
execute if score @s animation matches 39 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:9000,yRot:15000}
execute if score @s animation matches 40 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_l,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}

execute if score @s animation matches 10 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-90000,yRot:150000}
execute if score @s animation matches 23 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-81000,yRot:135000}
execute if score @s animation matches 25 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-72000,yRot:120000}
execute if score @s animation matches 27 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-63000,yRot:105000}
execute if score @s animation matches 29 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-54000,yRot:90000}
execute if score @s animation matches 31 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-45000,yRot:75000}
execute if score @s animation matches 33 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-36000,yRot:60000}
execute if score @s animation matches 35 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-27000,yRot:45000}
execute if score @s animation matches 37 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-18000,yRot:30000}
execute if score @s animation matches 39 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:-9000,yRot:15000}
execute if score @s animation matches 40 as @e[type=item_display,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=arm_r,limit=1,sort=nearest] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}

execute if score @s animation matches 55.. run tag @s add summoned
execute if score @s animation matches 55.. run data merge entity @s {NoGravity:0b,NoAI:0b}
execute if score @s animation matches 55.. as @e[type=item_display,tag=artifact_golem,predicate=ancient_artifacts:match_golem_id,distance=..5] run data remove entity @s brightness

scoreboard players add @s animation 1