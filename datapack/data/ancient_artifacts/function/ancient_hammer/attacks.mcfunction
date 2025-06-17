execute if items entity @s weapon.mainhand echo_shard[minecraft:damage=15] run return fail

##meele
execute if score @s[nbt={OnGround:0b}] attack matches 10.. at @s run function ancient_artifacts:ancient_hammer/meele_attack
##use
#animation
execute if score @s hammer_time matches 2 run playsound minecraft:entity.warden.sonic_charge player @a
execute if score @s hammer_time matches 2 run effect give @s slowness 1 0 true
execute if score @s hammer_time matches 4 run effect give @s slowness 1 1 true
execute if score @s hammer_time matches 6 run effect give @s slowness 1 2 true
execute if score @s hammer_time matches 8 run effect give @s slowness 1 3 true
execute if score @s hammer_time matches 10 run effect give @s slowness 5 4 true


execute if score @s hammer_time matches 33 run function ancient_artifacts:ancient_hammer/charge
#resets
execute if score @s hammer_time matches -1 run stopsound @s player minecraft:entity.warden.sonic_charge
execute if score @s hammer_time matches -1 run effect clear @s slowness