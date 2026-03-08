execute if score @s stomp_cooldown matches 1.. unless score @s stomp_animation matches 1.. run scoreboard players remove @s stomp_cooldown 1

execute if score @s stomp_cooldown matches 0:
    scoreboard players set @s stomp_animation 100
    effect give @s levitation 2 1 true
    playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 3 0.8
    playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 3 0.8

execute unless score @s stomp_cooldown matches 1.. store result score @s stomp_cooldown run random value 1200..2300

