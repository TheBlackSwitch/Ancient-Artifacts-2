advancement grant @s only ancient_artifacts:main/equip_artifact
function ancient_artifacts:artifacts/reset
execute unless predicate theblackswitch:v2.0/patch-3/movement_check/sneak run function ancient_artifacts:artifact_hotbar/activate/nested_execute_0
execute if score @s artifact_slot_2 matches 155 run function ancient_artifacts:artifact_hotbar/move_focus_medal
execute if score @s artifact_slot_1 matches 155 run tag @s add focused
execute unless predicate theblackswitch:v2.0/patch-3/movement_check/sneak run function ancient_artifacts:artifact_hotbar/activate/nested_execute_1
tag @e[type=item_display, tag=artifact_activate_particles] remove INIT
execute if predicate theblackswitch:v2.0/patch-3/movement_check/sneak run function ancient_artifacts:artifact_hotbar/activate/nested_execute_2
function ancient_artifacts:artifacts/overworld/deactivation_crown/deactivate
execute unless score @s artifact_slot_1 matches 155 run tag @s remove focused
execute at @s run function ancient_artifacts:artifact_hotbar/show
function ancient_artifacts:artifacts/late_reset
