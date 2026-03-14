tag @s add generated
loot replace entity @s container.0 loot ancient_artifacts:ancient_stone_item
execute if entity @e[tag=dungeon_center,distance=..120] unless score @n[tag=dungeon_center] has_hammer matches 2.. run loot replace entity @s container.0 loot ancient_artifacts:item/ancient_hammer
execute if entity @e[tag=dungeon_center,distance=..120] unless score @n[tag=dungeon_center] has_hammer matches 2.. run scoreboard players set @n[tag=dungeon_center] has_hammer 2
execute if items entity @s container.0 echo_shard run data modify entity @s transformation set value {translation: [0.0f, 1f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}
