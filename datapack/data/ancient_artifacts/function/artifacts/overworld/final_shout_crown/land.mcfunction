##No damage landing
execute unless entity @s[nbt={OnGround:true}] run effect give @s slow_falling 1 0 true
execute unless entity @s[nbt={OnGround:true}] run effect give @s slow_falling 1 0 true
execute if entity @s[nbt={OnGround:true}] run tag @s remove shout_land
execute if entity @s[nbt={OnGround:true}] run effect clear @s slow_falling