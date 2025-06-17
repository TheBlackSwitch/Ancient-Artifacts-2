
# Score Countdown
execute if score @s waste_effect matches 1.. run scoreboard players remove @s waste_effect 1
execute if score @s waste_effect matches 0 run scoreboard players set @s waste_effect -1

# ---------------------
#   Overlay Animation
# ---------------------

# Buildup
execute if score @s waste_effect matches 590 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/2",do_sound:false}
execute if score @s waste_effect matches 580 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/3",do_sound:false}
execute if score @s waste_effect matches 570 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/4",do_sound:false}
execute if score @s waste_effect matches 560 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/5",do_sound:false}
execute if score @s waste_effect matches 550 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/6",do_sound:false}
execute if score @s waste_effect matches 540 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/7",do_sound:false}
execute if score @s waste_effect matches 530 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/8",do_sound:false}

# Dissipation
execute if score @s waste_effect matches 60 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/7",do_sound:false}
execute if score @s waste_effect matches 50 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/6",do_sound:false}
execute if score @s waste_effect matches 40 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/5",do_sound:false}
execute if score @s waste_effect matches 30 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/4",do_sound:false}
execute if score @s waste_effect matches 20 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/3",do_sound:false}
execute if score @s waste_effect matches 10 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/2",do_sound:false}
execute if score @s waste_effect matches 5 run function theblackswitch:overlay/set_overlay {overlay:"ancient_artifacts:item/overlay/artifact_waste/1",do_sound:false}



execute if score @s waste_effect matches 1.. run attribute @s gravity modifier add artifact_waste -0.8 add_multiplied_total
execute if score @s waste_effect matches 1.. run attribute @s safe_fall_distance modifier add artifact_waste 5 add_value
execute if score @s waste_effect matches -1 run attribute @s gravity modifier remove artifact_waste
execute if score @s waste_effect matches -1 run attribute @s safe_fall_distance modifier remove artifact_waste
execute if score @s waste_effect matches 1 run function theblackswitch:overlay/set_overlay {overlay:"none",do_sound:true}