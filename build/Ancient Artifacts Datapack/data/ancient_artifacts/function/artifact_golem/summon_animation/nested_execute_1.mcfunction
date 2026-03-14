particle gust_emitter_small ~ ~3.5 ~ 0.2 0.2 0.2 0 2
execute on passengers if entity @s[type=minecraft:item_display] run data merge entity @s {brightness: {block: 8, sky: 0}}
