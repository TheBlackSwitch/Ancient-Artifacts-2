loot give @s loot ancient_artifacts:item/mystery_box/exploration_box
scoreboard players set @s explored_chunks 0
playsound minecraft:entity.item.pickup block @a ~ ~ ~ 1 0.6
particle minecraft:cloud ~ ~ ~ 0.1 0.2 0.1 0 1 force
playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 0.7 1.5
