scoreboard players add @s heart_state 1
playsound minecraft:entity.wither.death block @a ~ ~ ~ 0.6 1
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 0.9
playsound minecraft:entity.warden.death block @a ~ ~ ~ 1 0.9
playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 1
playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 1
playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 1
execute at @e[tag=sculk_heart,distance=..5] run particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.3 0.3 0.3 0 50 force
execute at @e[tag=sculk_heart,distance=..5] run particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.3 0.3 0.3 0 50 force
particle minecraft:gust_emitter_large
execute as @e[tag=sculk_heart,distance=..5] run data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:entity/sculk_heart/active"
scoreboard players set @s animation 22
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace sculk_shrieker