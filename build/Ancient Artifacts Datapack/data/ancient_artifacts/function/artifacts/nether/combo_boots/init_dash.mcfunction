scoreboard players set @s dash_power 5
playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0.7
function ancient_artifacts:utilities/add_item_damage {damage: 20}
effect give @s slowness 5 0 false
tag @s remove was_sprinting_last_tick
