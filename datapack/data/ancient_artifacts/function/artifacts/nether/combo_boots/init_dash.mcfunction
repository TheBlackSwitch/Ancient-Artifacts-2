scoreboard players set @s dash_power 5
playsound entity.wither.shoot player @a ~ ~ ~ 1 1
playsound entity.wither.break_block player @a ~ ~ ~ 1 1.5
function ancient_artifacts:utilities/add_item_damage {damage:20}

effect give @s slowness 5 3 false

tag @s remove was_sprinting_last_tick