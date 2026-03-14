# Shoot a beam towards the player to let them know they are triggering the bossfight


particle minecraft:dust{color:[0.0,0.6,0.5],scale:1} ~ ~ ~

execute if score #loop_count temp matches 1000.. run return fail
scoreboard players add #loop_count temp 1

execute if entity @s[distance=..0.5] at @s run return:
    execute unless entity @s[tag=sculk_heart_trail_start] run return fail
    tag @s remove sculk_heart_trail_start
    
    data modify storage ancient_artifacts:temp trail.pos set from entity @s Pos
    data modify storage ancient_artifacts:temp trail merge value {color:[0.0,0.5,0.6],duration:15}
    for i in range(36):
        rot = (i*10)
        execute rotated ~rot 0 positioned ^ ^0.1 ^0.8 run function ancient_artifacts:utilities/trail with storage ancient_artifacts:temp trail

execute facing entity @s feet positioned ^ ^ ^0.2 run function ancient_artifacts:sculk_heart/heart/beam