
#-------------------------------------------------------
## Control the artifact golem's phase
#-------------------------------------------------------

# -1 => wander around (can't find a target to attack)
# 1  => idle / walking towards target 
# 2  => fast move + stomp + teleport
# 3  => lazer + fast move + stomp + teleport
# 4  => teleport


execute if score #20 tbs.slow_tick matches 4:
    scoreboard players set @s attack_type -1
    execute if entity @a[distance=..15,predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 1
    execute if entity @a[distance=..30,predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 2 
    execute if entity @a[distance=..45,predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 3
    execute if entity @a[distance=..60,predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 4

execute if score #5 tbs.slow_tick matches 2:
    positioned ^ ^1.5 ^2 if entity @e[type=player,distance=..3,predicate=ancient_artifacts:survival] run return run tag @s add meele
    tag @s remove meele


#-------------------------------------------------------
## Control animations
#-------------------------------------------------------

# Disable arms walking animation if needed
tag @s remove no_arms_walking_animation
execute if entity @s[tag=meele] run tag @s add no_arms_walking_animation
execute if score @s stomp_animation matches 1.. run tag @s add no_arms_walking_animation
execute if score @s lazer_animation < @s lazer_max run tag @s add no_arms_walking_animation

# wait for attacks to finish
execute if score @s attack_type matches ..1 if score @s stomp_animation matches 1.. run scoreboard players set @s attack_type 2
execute if score @s attack_type matches ..2 if score @s lazer_animation < @s lazer_max run scoreboard players set @s attack_type 3

#-------------------------------------------------------
## All the phases
#-------------------------------------------------------

#meele
execute if score @s attack_animation matches 1.. run return run function ancient_artifacts:artifact_golem/attacks/meele
execute if entity @s[tag=meele] run return run function ancient_artifacts:artifact_golem/attacks/meele

#slow move
execute if score #10 tbs.slow_tick matches 10 if score @s attack_type matches ..1 run attribute @s movement_speed base set 0.25

#fast move
execute if score #10 tbs.slow_tick matches 10 if score @s attack_type matches 2.. run attribute @s movement_speed base set 0.32

#stomp
execute if score @s attack_type matches 2..3 unless score @s lazer_animation < @s lazer_max:
    execute if score @s stomp_animation matches 1.. run return run function ancient_artifacts:artifact_golem/attacks/stomp/animation
    function ancient_artifacts:artifact_golem/attacks/stomp/trigger

#lazer
execute if score @s attack_type matches 3 unless score @s stomp_animation matches 1..:
    execute if score @s lazer_animation < @s lazer_max run return run function ancient_artifacts:artifact_golem/attacks/lazer/animation
    function ancient_artifacts:artifact_golem/attacks/lazer/trigger

#teleport
execute if score @s attack_type matches 2..4 run function ancient_artifacts:artifact_golem/attacks/teleport