function ancient_artifacts:utilities/add_item_damage {damage: 1}
kill @e[type=text_display, tag=tooltip, dy=0]
tag @n[type=marker, tag=control, dy=0] add sheared
playsound entity.sheep.shear block @a ~0.5 ~0.5 ~0.5 1 1
advancement grant @s only ancient_artifacts:main/cleanly_cut
