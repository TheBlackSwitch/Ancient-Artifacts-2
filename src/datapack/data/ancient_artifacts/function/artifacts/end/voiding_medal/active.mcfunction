execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 129 run attribute @s attack_damage modifier add voiding_medal -0.6 add_multiplied_total
execute if score @s artifact matches 130 run attribute @s attack_damage modifier add voiding_medal -0.4 add_multiplied_total

execute unless score @s attack matches 1.. run return fail

execute unless data entity @s {active_effects:[{id:"minecraft:strength"}]} run return run effect give @s strength 1 1

scoreboard players set .level temp 0
execute store result score .level temp run data get entity @s active_effects[{id:"minecraft:strength"}].amplifier

execute store result storage ancient_artifacts:player strength.level int 1 run scoreboard players add .level temp 1

execute if score .level temp matches 15 run advancement grant @s only ancient_artifacts:artifacts/end/voiding_expert
function ancient_artifacts:artifacts/end/voiding_medal/apply_strength with storage ancient_artifacts:player strength