scoreboard players add @s heart_state 1

playsound minecraft:entity.wither.death block @a ~ ~ ~ 0.6 1
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 0.9
playsound minecraft:entity.warden.death block @a ~ ~ ~ 1 0.9
playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 1
playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 1
playsound minecraft:block.sculk.spread block @a ~ ~ ~ 2 1

execute as @e[tag=sculk_heart,distance=..5] at @s:
    particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.3 0.3 0.3 0 50 force
    particle minecraft:block{block_state:"minecraft:sculk"} ~ ~ ~ 0.3 0.3 0.3 0 50 force
    data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:entity/sculk_heart/active"

particle minecraft:gust_emitter_large

scoreboard players set @s animation 22
fill ~-30 ~-30 ~-30 ~30 ~30 ~30 air replace #ancient_artifacts:sculk_heart_remove