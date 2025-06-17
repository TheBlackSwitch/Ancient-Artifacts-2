scoreboard players set .found temp 1

summon item_display ~ ~ ~ {Tags:[find_rotation]}

tp @e[type=item_display,tag=find_rotation] ~ ~ ~ facing entity @s eyes

execute align xyz as @e[type=item_display,tag=find_rotation,x_rotation=45..90] at @s run tp @s ~ ~ ~ ~ 90
execute align xyz as @e[type=item_display,tag=find_rotation,x_rotation=-45..45] at @s run tp @s ~ ~ ~ ~ 0
execute align xyz as @e[type=item_display,tag=find_rotation,x_rotation=-90..-45] at @s run tp @s ~ ~ ~ ~ -90

execute align xyz as @e[type=item_display,tag=find_rotation,y_rotation=-180..-135] at @s run tp @s ~ ~ ~ 180 ~
execute align xyz as @e[type=item_display,tag=find_rotation,y_rotation=135..180] at @s run tp @s ~ ~ ~ 180 ~ 
execute align xyz as @e[type=item_display,tag=find_rotation,y_rotation=45..135] at @s run tp @s ~ ~ ~ 90 ~
execute align xyz as @e[type=item_display,tag=find_rotation,y_rotation=-45..45] at @s run tp @s ~ ~ ~ 0 ~
execute align xyz as @e[type=item_display,tag=find_rotation,y_rotation=-135..-45] at @s run tp @s ~ ~ ~ -90 ~

particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
playsound minecraft:block.amethyst_block.break block @s ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup block @s ~ ~ ~ 0.4 2

execute if entity @s[tag=mine_5] run function ancient_artifacts:utilities/add_item_damage {damage:5}
execute if entity @s[tag=mine_9] run function ancient_artifacts:utilities/add_item_damage {damage:9}

execute align xyz if entity @s[tag=mine_5] at @e[type=item_display,tag=find_rotation,dy=0] run function ancient_artifacts:artifacts/overworld/miners_crown/mine_5
execute align xyz if entity @s[tag=mine_9] at @e[type=item_display,tag=find_rotation,dy=0] run function ancient_artifacts:artifacts/overworld/miners_crown/mine_9

execute if score .diamond_mined temp matches 5.. run advancement grant @s only ancient_artifacts:artifacts/overworld/miners_expert

execute align xyz run kill @e[type=item_display,tag=find_rotation,dy=0]