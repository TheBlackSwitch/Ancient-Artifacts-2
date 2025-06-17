execute if entity @s[nbt={inGround:1b}] run tag @s remove homing
execute if entity @s[nbt={inGround:1b}] run data modify entity @s NoGravity set value 0b
execute if entity @s[nbt={DealtDamage:1b}] run tag @s remove homing
execute if entity @s[nbt={DealtDamage:1b}] run data modify entity @s NoGravity set value 0b
execute at @s on origin facing entity @s feet positioned 0.0 0.0 0.0 run summon marker ^ ^0.1 ^1.2 {Tags:[pos_to_motion]}
execute unless entity @s[nbt={DealtDamage:1b}] run data modify entity @s Motion set from entity @e[tag=pos_to_motion,limit=1] Pos
kill @e[tag=pos_to_motion]
