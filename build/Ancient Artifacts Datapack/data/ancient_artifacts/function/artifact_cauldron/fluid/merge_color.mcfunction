$scoreboard players set .rMod temp $(R)
$scoreboard players set .gMod temp $(G)
$scoreboard players set .bMod temp $(B)
scoreboard players set #2 temp 2
execute as @n[type=text_display, tag=fluid, dy=0] run function ancient_artifacts:artifact_cauldron/fluid/merge_color/nested_execute_0
