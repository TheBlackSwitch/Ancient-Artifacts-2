execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute if score @s artifact matches 76.. if score @s damage matches 1.. run function ancient_artifacts:artifacts/nether/combo_boots/set_parry
execute if score @s artifact matches 77.. if score @s bow_time matches 1.. if predicate ancient_artifacts:fly_5_blocks if entity @s[nbt={OnGround: 0b}] run function ancient_artifacts:artifacts/nether/combo_boots/bow_slow
execute if score @s artifact matches 78.. if score @s[tag=!slam, scores={combo.slam=..100}] sneak matches 1.. if predicate ancient_artifacts:fly_5_blocks if entity @s[nbt={OnGround: 0b}] if predicate ancient_artifacts:holding_tool run scoreboard players set @s slam_distance 0
execute if score @s artifact matches 78.. if score @s[tag=!slam, scores={combo.slam=..100}] sneak matches 1.. if predicate ancient_artifacts:fly_5_blocks if entity @s[nbt={OnGround: 0b}] if predicate ancient_artifacts:holding_tool run function ancient_artifacts:artifacts/nether/combo_boots/slam
execute if score @s artifact matches 79.. if score @s[tag=was_sprinting_last_tick] sneak matches 1.. if entity @s[nbt={OnGround: 1b}] if predicate ancient_artifacts:holding_tool unless entity @s[nbt={active_effects: [{id: "minecraft:slowness"}]}] run function ancient_artifacts:artifacts/nether/combo_boots/init_dash
execute unless score @s sneak matches 1.. if score @s sprint matches 1.. run tag @s add was_sprinting_last_tick
execute unless score @s sneak matches 1.. unless score @s sprint matches 1.. run tag @s remove was_sprinting_last_tick
execute if entity @s[scores={combo.bowtime=1.., combo.parry=1.., combo.slam=1..}] run advancement grant @s only ancient_artifacts:artifacts/nether/combo_expert
