execute as @e[type=marker, tag=aa.fill_fire] at @s run function ancient_artifacts:artifacts/nether/fireball_ring/fill_fire
execute as @e[type=#arrows, tag=fireball_ring, nbt={inGround: 1b}] run kill @s
execute as @e[type=item_display, tag=fireball_ring] at @s run function ancient_artifacts:artifacts/nether/fireball_ring/check_explode
