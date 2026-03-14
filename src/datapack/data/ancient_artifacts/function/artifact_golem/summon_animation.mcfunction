
import ancient_artifacts:transform_helper as t

#-------------------------------------------------------
## The actual animation
#-------------------------------------------------------

scoreboard players operation #search golemID = @s golemID


execute if score @s animation matches 1.. at @e[type=marker,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=spawn_pos,limit=1,sort=nearest] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 0 20 force
execute if score @s animation matches 30.. at @e[type=marker,tag=artifact_golem,distance=..20,predicate=ancient_artifacts:match_golem_id,tag=spawn_pos,limit=1,sort=nearest] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.1 0.5 0 20 force

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

execute if score @s animation matches 20:
    playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
    playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8

execute if score @s animation matches 34 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 34 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8
execute if score @s animation matches 43 run playsound block.netherite_block.place hostile @a ~ ~2 ~ 2 0.6
execute if score @s animation matches 43 run playsound entity.iron_golem.step hostile @a ~ ~2 ~ 2 0.8

execute if score @s animation matches 1:
    particle gust_emitter_small ~ ~3.5 ~ 0.2 0.2 0.2 0 2
    execute on passengers if entity @s[type=minecraft:item_display] run data merge entity @s {brightness:{block:8,sky:0}}


execute if score @s animation matches 10 on passengers if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-45, 0, 110)}
execute if score @s animation matches 10 on passengers if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.toQuat(-45, 0, -110)}

# Animate the arms
for i in range(10):  
    execute if score @s animation matches (22 + i*2) on passengers:
        if entity @s[tag=arm_l] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-45, 0, 110, 0, 0, 0, i / 9)}
        if entity @s[tag=arm_r] run function ancient_artifacts:artifact_golem/set_rot {"rot":t.lerpToQuat(-45, 0, -110, 0, 0, 0, i / 9)}

execute if score @s animation matches 55..:
    tag @s add summoned
    data merge entity @s {NoGravity:0b,NoAI:0b}
    execute on passengers if entity @s[type=minecraft:item_display] run data remove entity @s brightness

scoreboard players add @s animation 1