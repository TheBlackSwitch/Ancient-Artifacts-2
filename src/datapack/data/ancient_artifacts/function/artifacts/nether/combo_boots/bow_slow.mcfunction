function ancient_artifacts:utilities/tick_speed/set {rate:10}
effect give @s slow_falling
effect give @s minecraft:hunger 1 128
scoreboard players set @s combo.bowtime 200
execute unless score .timewarp server matches 0.. run scoreboard players set .timewarp server 2
tag @s add slow_bow
schedule function ancient_artifacts:artifacts/nether/combo_boots/bow_slow_reset 2t replace