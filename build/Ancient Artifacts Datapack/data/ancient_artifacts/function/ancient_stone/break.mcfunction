playsound minecraft:block.deepslate.break block @a ~ ~ ~ 1 0.8
particle minecraft:block{block_state: "minecraft:polished_deepslate"} ~ ~ ~ 0.3 0.3 0.3 0.1 50 force
execute align xyz run kill @e[tag=break, limit=1, dy=0]
execute align xyz run kill @e[tag=item, tag=ancient_stone, dy=0]
execute align xyz run kill @e[tag=break, dy=0]
execute align xyz run kill @e[tag=control, tag=ancient_stone, dy=0]
execute align xyz run kill @e[type=item_display, tag=hitbox, tag=ancient_stone, dy=0]
execute align xyz run tp @e[type=shulker, tag=hitbox, tag=ancient_stone, dy=0] ~ ~-10000 ~
kill @s
