scoreboard players operation #search golemID = @s golemID
scoreboard players set #-1 temp -1
scoreboard players set #2 temp 2
execute if score @s motionX matches ..0 run scoreboard players operation @s motionX *= #-1 temp
execute if score @s motionZ matches ..0 run scoreboard players operation @s motionZ *= #-1 temp
scoreboard players operation @s motionX += @s motionZ
scoreboard players operation @s motionX /= #2 temp
execute if score @s motionX matches 15.. run scoreboard players operation @s walk_animation += @s motionX
execute unless score @s motionX matches 15.. if score @s walk_animation matches 0.. run scoreboard players remove @s walk_animation 100
execute if score @s walk_animation matches ..0 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
execute if score @s walk_animation matches ..0 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
execute if score @s walk_animation matches 1..100 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
execute if score @s walk_animation matches 1..100 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.0d, 0.0d, 0.0d, 1.0d]}
execute if score @s walk_animation matches 101..200 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.13052619222005157d, 0.0d, 0.0d, 0.9914448613738104d]}
execute if score @s walk_animation matches 101..200 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.13052619222005157d, 0.0d, 0.0d, 0.9914448613738104d]}
execute if score @s walk_animation matches 201..300 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s walk_animation matches 201..300 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s walk_animation matches 301..400 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s walk_animation matches 301..400 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s walk_animation matches 401..500 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.17364817766693036d, 0.0d, 0.0d, 0.984807753012208d]}
execute if score @s walk_animation matches 401..500 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.17364817766693036d, 0.0d, 0.0d, 0.984807753012208d]}
execute if score @s walk_animation matches 501..600 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.08715574274765818d, 0.0d, 0.0d, 0.9961946980917455d]}
execute if score @s walk_animation matches 501..600 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.08715574274765818d, 0.0d, 0.0d, 0.9961946980917455d]}
execute if score @s walk_animation matches 601..700 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.13052619222005157d, 0.0d, 0.0d, 0.9914448613738104d]}
execute if score @s walk_animation matches 601..700 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.13052619222005157d, 0.0d, 0.0d, 0.9914448613738104d]}
execute if score @s walk_animation matches 701..800 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.21643961393810288d, 0.0d, 0.0d, 0.9762960071199334d]}
execute if score @s walk_animation matches 701..800 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.21643961393810288d, 0.0d, 0.0d, 0.9762960071199334d]}
execute if score @s walk_animation matches 801..900 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.3007057995042731d, 0.0d, 0.0d, 0.9537169507482269d]}
execute if score @s walk_animation matches 801..900 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.3007057995042731d, 0.0d, 0.0d, 0.9537169507482269d]}
execute if score @s walk_animation matches 901..1000 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s walk_animation matches 901..1000 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.25881904510252074d, 0.0d, 0.0d, 0.9659258262890683d]}
execute if score @s walk_animation matches 1001..1100 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.17364817766693036d, 0.0d, 0.0d, 0.984807753012208d]}
execute if score @s walk_animation matches 1001..1100 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.17364817766693036d, 0.0d, 0.0d, 0.984807753012208d]}
execute if score @s walk_animation matches 1101..1200 on passengers if entity @s[tag=leg_l] run function ancient_artifacts:artifact_golem/set_rot {rot: [-0.08715574274765818d, 0.0d, 0.0d, 0.9961946980917455d]}
execute if score @s walk_animation matches 1101..1200 on passengers if entity @s[tag=leg_r] run function ancient_artifacts:artifact_golem/set_rot {rot: [0.08715574274765818d, 0.0d, 0.0d, 0.9961946980917455d]}
execute unless entity @s[tag=no_arms_walking_animation] run function ancient_artifacts:artifact_golem/walk_animation/nested_execute_0
execute unless score @s walk_animation matches 600.. run scoreboard players set @s walk_sound 0
execute unless score @s walk_sound matches 1.. if score @s walk_animation matches 600.. run playsound block.netherite_block.place hostile @a ~ ~ ~ 2 0.6
execute unless score @s walk_sound matches 1.. if score @s walk_animation matches 600.. run playsound entity.iron_golem.step hostile @a ~ ~ ~ 2 0.8
execute if score @s walk_animation matches 600.. run scoreboard players set @s walk_sound 1
execute if score @s walk_animation matches 1200.. run playsound block.netherite_block.place hostile @a ~ ~ ~ 1 0.6
execute if score @s walk_animation matches 1200.. run playsound entity.iron_golem.step hostile @a ~ ~ ~ 1 0.8
execute if score @s walk_animation matches 1200.. run scoreboard players set @s walk_animation 0
