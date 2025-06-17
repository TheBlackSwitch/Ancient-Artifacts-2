execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
#82-83 + 84

execute if score @s artifact matches 82 run scoreboard players set @s night_vision_max 6000
execute if score @s artifact matches 83 run scoreboard players set @s night_vision_max 12000
execute if score @s artifact matches 84 run scoreboard players set @s night_vision_max 48000

execute if predicate ancient_artifacts:is_dark if score @s night_vision_timer < @s night_vision_max if entity @s[tag=!was_dark] run function ancient_artifacts:artifacts/deep_dark/borla_of_vision/activate_sfx
execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. unless score @s vision_toggle_cooldown matches 1.. if entity @s[tag=was_dark] run function ancient_artifacts:artifacts/deep_dark/borla_of_vision/deactivate_sfx
execute unless score @s night_vision_timer < @s night_vision_max if entity @s[tag=was_dark] run function ancient_artifacts:artifacts/deep_dark/borla_of_vision/deactivate_sfx

execute if predicate ancient_artifacts:is_dark if score @s night_vision_timer < @s night_vision_max run effect give @s night_vision 11 0
execute if predicate ancient_artifacts:is_dark if score @s night_vision_timer < @s night_vision_max run scoreboard players add @s night_vision_timer 1

execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. if score @s night_vision_timer matches 1.. run scoreboard players remove @s night_vision_timer 10
execute unless score @s night_vision_timer matches 1.. run scoreboard players set @s night_vision_timer 0

scoreboard players operation .total_dia temp = @s vision_dia_mined
scoreboard players operation .total_dia temp += @s vision_deepslate_dia_mined

scoreboard players operation .night_vision_range temp = @s night_vision_max
scoreboard players remove .night_vision_range temp 1000

execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. if score @s night_vision_timer > .night_vision_range temp if score @s night_vision_timer < @s night_vision_max if score .total_dia temp matches 5.. if entity @s[tag=was_below_0] run advancement grant @s only ancient_artifacts:artifacts/deep_dark/vision_expert

execute if score @s night_vision_timer = @s night_vision_max run tag @s remove was_below_0
execute if score @s night_vision_timer = @s night_vision_max run scoreboard players set @s vision_dia_mined 0
execute if score @s night_vision_timer = @s night_vision_max run scoreboard players set @s vision_deepslate_dia_mined 0


execute if entity @s[y=0,dy=-64] run tag @s add was_below_0
execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. run tag @s remove was_below_0

execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. run scoreboard players set @s vision_dia_mined 0
execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. run scoreboard players set @s vision_deepslate_dia_mined 0


tag @s add was_dark
execute unless predicate ancient_artifacts:is_dark unless score @s vision_toggle_cooldown matches 1.. run tag @s remove was_dark
execute unless score @s night_vision_timer < @s night_vision_max run tag @s remove was_dark
tag @s add borla_of_vision

execute if score @s vision_toggle_cooldown matches 1.. run scoreboard players remove @s vision_toggle_cooldown 1
execute if predicate ancient_artifacts:is_dark run scoreboard players set @s vision_toggle_cooldown 100
