scoreboard players operation .search golemID = @s golemID

execute if score @s motionX matches ..0 run scoreboard players operation @s motionX *= .-1 const
execute if score @s motionZ matches ..0 run scoreboard players operation @s motionZ *= .-1 const
scoreboard players operation @s motionX += @s motionZ
scoreboard players operation @s motionX /= .2 const
execute if score @s motionX matches 15.. run scoreboard players operation @s walk_animation += @s motionX
execute unless score @s motionX matches 15.. if score @s walk_animation matches 0.. run scoreboard players remove @s walk_animation 100

##Legs
execute if score @s walk_animation matches ..0 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}
execute if score @s walk_animation matches ..0 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}
execute if score @s walk_animation matches 1..100 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}
execute if score @s walk_animation matches 101..200 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:30000}
execute if score @s walk_animation matches 201..300 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:45000}
execute if score @s walk_animation matches 0..100 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-15000}
execute if score @s walk_animation matches 101..200 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-30000}
execute if score @s walk_animation matches 201..300 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-45000}

execute if score @s walk_animation matches 301..400 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:30000}
execute if score @s walk_animation matches 401..500 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:15000}
execute if score @s walk_animation matches 501..600 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}
execute if score @s walk_animation matches 301..400 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-30000}
execute if score @s walk_animation matches 401..500 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-15000}
execute if score @s walk_animation matches 501..600 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}

execute if score @s walk_animation matches 601..700 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-15000}
execute if score @s walk_animation matches 701..800 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-30000}
execute if score @s walk_animation matches 801..900 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-45000}
execute if score @s walk_animation matches 601..700 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:15000}
execute if score @s walk_animation matches 701..800 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:30000}
execute if score @s walk_animation matches 801..900 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:45000}

execute if score @s walk_animation matches 901..1000 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-30000}
execute if score @s walk_animation matches 1001..1100 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:-15000}
execute if score @s walk_animation matches 1101..1200 as @e[type=item_display,tag=artifact_golem,tag=leg_l,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}
execute if score @s walk_animation matches 901..1000 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:30000}
execute if score @s walk_animation matches 1001..1100 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:15000}
execute if score @s walk_animation matches 1101..1200 as @e[type=item_display,tag=artifact_golem,tag=leg_r,limit=1,distance=..20,predicate=ancient_artifacts:match_golem_id] run function ancient_artifacts:artifact_golem/set_rot {xRot:0,yRot:0}

##Arms
execute unless entity @s[tag=no_arms_walking_animation] run function ancient_artifacts:artifact_golem/walk_animation_arms
##Sound and Particle effects

execute unless score @s walk_animation matches 600.. run scoreboard players set @s walk_sound 0
execute unless score @s walk_sound matches 1.. if score @s walk_animation matches 600.. run playsound block.netherite_block.place hostile @a ~ ~ ~ 2 0.6
execute unless score @s walk_sound matches 1.. if score @s walk_animation matches 600.. run playsound entity.iron_golem.step hostile @a ~ ~ ~ 2 0.8
execute if score @s walk_animation matches 600.. run scoreboard players set @s walk_sound 1

execute if score @s walk_animation matches 1200.. run playsound block.netherite_block.place hostile @a ~ ~ ~ 1 0.6
execute if score @s walk_animation matches 1200.. run playsound entity.iron_golem.step hostile @a ~ ~ ~ 1 0.8

execute if score @s walk_animation matches 1200.. run scoreboard players set @s walk_animation 0




