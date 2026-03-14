tag @s add summoned
data merge entity @s {NoGravity: 0b, NoAI: 0b}
execute on passengers if entity @s[type=minecraft:item_display] run data remove entity @s brightness
