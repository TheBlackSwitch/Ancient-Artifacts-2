execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 76.. if score @s damage matches 1.. run function ancient_artifacts:artifactsbow_time/nether/combo_boots/set_parry

execute if score @s artifact matches 77.. if score @s bow_time matches 1.. if predicate ancient_artifacts:fly_5_blocks if entity @s[nbt={OnGround:0b}] run function ancient_artifacts:artifacts/nether/combo_boots/bow_slow

execute if score @s artifact matches 78.. if entity @s[tag=!slam,scores={combo.slam=..100}] if predicate theblackswitch:__version__/__patch__/movement_check/sneak if predicate ancient_artifacts:fly_5_blocks if entity @s[nbt={OnGround:0b}] if predicate ancient_artifacts:holding_tool run scoreboard players set @s slam_distance 0

execute if score @s artifact matches 78.. if entity @s[tag=!slam,scores={combo.slam=..100}] if predicate theblackswitch:__version__/__patch__/movement_check/sneak if predicate ancient_artifacts:fly_5_blocks if entity @s[nbt={OnGround:0b}] if predicate ancient_artifacts:holding_tool run function ancient_artifacts:artifacts/nether/combo_boots/slam

# Play a pling sound when the cooldown is finished
execute if score @s artifact matches 79.. if score @s aa.combo_boots.dash_cd matches 1:
    playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2
    playsound minecraft:entity.breeze.slide master @s ~ ~ ~ 0.2 2

execute if score @s artifact matches 79.. if entity @s[tag=was_sprinting_last_tick] if predicate theblackswitch:__version__/__patch__/movement_check/sneak if entity @s[nbt={OnGround:1b}] unless score @s aa.combo_boots.dash_cd matches 1.. run function ancient_artifacts:artifacts/nether/combo_boots/init_dash
execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak if predicate theblackswitch:__version__/__patch__/movement_check/sprint run tag @s add was_sprinting_last_tick
execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak unless predicate theblackswitch:__version__/__patch__/movement_check/sprint run tag @s remove was_sprinting_last_tick


execute if entity @s[scores={combo.bowtime=1..,combo.parry=1..,combo.slam=1..}] run advancement grant @s only ancient_artifacts:artifacts/nether/combo_expert