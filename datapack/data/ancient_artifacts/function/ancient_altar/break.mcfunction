playsound minecraft:block.deepslate.break block @a ~ ~ ~ 1 0.8
particle minecraft:block{block_state:"minecraft:polished_deepslate"} ~ ~ ~ 0.3 0.3 0.3 0.1 50 force

execute on attacker unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot ancient_artifacts:block/ancient_altar

execute align xyz if data entity @e[tag=ancient_altar,tag=control,limit=1,dy=0] data.Item run summon item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:poisonous_potato",count:1b},Tags:[altar_drop]}
execute align xyz run data modify entity @e[tag=altar_drop,limit=1,dy=0] Item set from entity @e[tag=ancient_altar,tag=control,limit=1,dy=0] data.Item

execute align xyz run kill @e[tag=break,limit=1,dy=0]
execute align xyz run kill @e[tag=display,tag=ancient_altar,dy=0]
execute align xyz run kill @e[tag=control,tag=ancient_altar,dy=0]
execute align xyz run kill @e[tag=item,tag=ancient_altar,dy=0]
execute align xyz run kill @e[tag=break,dy=0]
execute align xyz run kill @e[type=item_display,tag=hitbox,tag=ancient_altar,dy=0]
execute align xyz run tp @e[type=shulker,tag=hitbox,tag=ancient_altar,dy=0] ~ ~-10000 ~

execute align xyz on attacker if entity @s[gamemode=creative] run kill @e[tag=altar_drop,dy=0]
tag @e[tag=altar_drop] remove altar_drop
kill @s