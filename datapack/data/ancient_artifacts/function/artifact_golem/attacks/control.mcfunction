#0 slow move + meele #1 slow move #2 fast move + stomp #3 lazer + fast move + stomp #4 teleport
scoreboard players set @s attack_type -1
execute if entity @a[distance=..60,predicate=ancient_artifacts:survival] run scoreboard players set @s attack_type 4
execute if entity @a[distance=..45,predicate=ancient_artifacts:survival] run scoreboard players set @s attack_type 3
execute if entity @a[distance=..30,predicate=ancient_artifacts:survival] run scoreboard players set @s attack_type 2 
execute if entity @a[distance=..15,predicate=ancient_artifacts:survival] run scoreboard players set @s attack_type 1 
execute positioned ^ ^1.5 ^2 if entity @e[type=player,distance=..3,predicate=ancient_artifacts:survival] run scoreboard players set @s attack_type 0

##phases
#Disable arms walking animation if needed
tag @s remove no_arms_walking_animation
execute if score @s attack_type matches 0 run tag @s add no_arms_walking_animation
execute if score @s stomp_animation matches 1.. run tag @s add no_arms_walking_animation
execute if score @s lazer_animation < @s lazer_max run tag @s add no_arms_walking_animation

#wait for attacks to finish
execute if score @s attack_animation matches 1.. run scoreboard players set @s attack_type 0
execute if score @s attack_type matches ..1 if score @s stomp_animation matches 1.. run scoreboard players set @s attack_type 2
execute if score @s attack_type matches ..2 if score @s lazer_animation < @s lazer_max run scoreboard players set @s attack_type 3

#meele
execute if score @s attack_type matches 0 run function ancient_artifacts:artifact_golem/attacks/meele

#slow move
execute if score .10 slow_tick matches 10 if score @s attack_type matches ..1 run attribute @s movement_speed base set 0.25

#fast move
execute if score .10 slow_tick matches 10 if score @s attack_type matches 2.. run attribute @s movement_speed base set 0.32

#stomp
execute if score @s attack_type matches 2..3 unless score @s lazer_animation < @s lazer_max run function ancient_artifacts:artifact_golem/attacks/stomp

#lazer
execute if score @s attack_type matches 3 unless score @s stomp_animation matches 1.. run function ancient_artifacts:artifact_golem/attacks/lazer

#teleport
execute if score @s attack_type matches 2..4 run function ancient_artifacts:artifact_golem/attacks/teleport