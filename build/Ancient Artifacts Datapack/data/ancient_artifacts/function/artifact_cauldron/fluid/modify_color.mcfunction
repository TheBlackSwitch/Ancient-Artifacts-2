$scoreboard players set .rMod temp $(R)
$scoreboard players set .gMod temp $(G)
$scoreboard players set .bMod temp $(B)
execute as @n[type=text_display, tag=fluid, dy=0] run function ancient_artifacts:artifact_cauldron/fluid/modify_color/nested_execute_0
