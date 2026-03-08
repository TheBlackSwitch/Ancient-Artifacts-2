
execute if score @s animation matches 15 run data merge entity @s {transformation:{translation:[0.0,0.0,0.0],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[1.0,1.0,1.0]},start_interpolation:0,interpolation_duration:5}

scoreboard players remove @s animation 1