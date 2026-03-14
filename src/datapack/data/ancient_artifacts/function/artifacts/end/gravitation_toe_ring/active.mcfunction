execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 122 run attribute @s gravity modifier add gravitation_toe_ring -0.25 add_multiplied_total
execute if score @s artifact matches 123 run attribute @s gravity modifier add gravitation_toe_ring -0.50 add_multiplied_total
execute if score @s artifact matches 124 run attribute @s gravity modifier add gravitation_toe_ring -0.75 add_multiplied_total
execute if score @s artifact matches 125 run attribute @s gravity modifier add gravitation_toe_ring -0.85 add_multiplied_total

execute if score @s artifact matches 122 run attribute @s safe_fall_distance modifier add gravitation_toe_ring 0.50 add_multiplied_total
execute if score @s artifact matches 123 run attribute @s safe_fall_distance modifier add gravitation_toe_ring 1.0 add_multiplied_total
execute if score @s artifact matches 124 run attribute @s safe_fall_distance modifier add gravitation_toe_ring 1.5 add_multiplied_total
execute if score @s artifact matches 125 run attribute @s safe_fall_distance modifier add gravitation_toe_ring 2 add_multiplied_total

execute if score @s artifact matches 124.. store result score .motion_y temp run data get entity @s Motion[1] 1000
execute if score @s artifact matches 124.. if score .motion_y temp matches ..20 if score @s waste_effect matches 1.. if entity @s[tag=travelers_boots_lvl3-4] if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:1b}],OnGround:0b}] run advancement grant @s only ancient_artifacts:artifacts/end/gravitation_expert