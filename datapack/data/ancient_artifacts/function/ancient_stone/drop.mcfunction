playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 1.5
playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 1 0.8
playsound minecraft:block.trial_spawner.eject_item block @a ~ ~ ~ 1 0.8
playsound minecraft:entity.item.pickup block @a ~ ~ ~ 1 0
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0 0 0 0.1 50
particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.1 50
summon item ~ ~0.5 ~ {Tags:[ancient_stone_item,INIT],Item:{id:"minecraft:poisonous_potato",count:1b}}
execute align xyz run data modify entity @n[tag=ancient_stone_item,tag=INIT] Item set from entity @e[tag=ancient_stone,tag=item,dy=0,limit=1] item
execute align xyz run kill @e[tag=ancient_stone,tag=item,dy=0]
tag @e[tag=ancient_stone_item] remove INIT
tag @s add opened