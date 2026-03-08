
# Store in temp score so it also works with signed nbrs
$scoreboard players set .rMod temp $(R)
$scoreboard players set .gMod temp $(G)
$scoreboard players set .bMod temp $(B)


execute as @n[type=text_display,tag=fluid,dy=0]:
    execute align xyz run scoreboard players operation @s R += .rMod temp
    execute align xyz run scoreboard players operation @s G += .gMod temp
    execute align xyz run scoreboard players operation @s B += .bMod temp