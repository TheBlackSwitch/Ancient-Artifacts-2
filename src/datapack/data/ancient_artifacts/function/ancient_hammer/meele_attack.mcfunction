playsound block.anvil.land player @a ~ ~ ~ 0.5 0.8
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 0

execute rotated ~ 0 run particle minecraft:block{block_state:"minecraft:dirt"} ^ ^ ^1.5 2 0 2 1 500 force
tag @s add hammer_immune
execute rotated ~ 0 positioned ^ ^ ^2 as @e[distance=..5,tag=!hammer_immune] positioned ^ ^ ^-2 run damage @s 10 ancient_artifacts:hammer by @p
tag @s remove hammer_immune
effect give @s resistance 1 6 true
execute rotated ~ 0 run summon wind_charge ~ ~ ~ {Motion:[0.0d, -5.0d, 0.0d],Tags:[hammer_knockback,INIT]}
data modify entity @e[tag=hammer_knockback,tag=INIT,limit=1] Owner set from entity @s
tag @e[tag=hammer_knockback,tag=INIT,limit=1] remove INIT
execute rotated ~ 0 run summon wind_charge ~ ~ ~ {Motion:[0.0d, -5.0d, 0.0d],Tags:[hammer_knockback,INIT]}
data modify entity @e[tag=hammer_knockback,tag=INIT,limit=1] Owner set from entity @s
tag @e[tag=hammer_knockback,tag=INIT,limit=1] remove INIT

execute store result score .rand temp run random value 1..3
execute if score .rand temp matches 1 run item modify entity @s weapon.mainhand {"function":"set_damage","damage":-0.07,"add":true}
execute if predicate ancient_artifacts:is_item_dead run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if predicate ancient_artifacts:is_item_dead run item replace entity @s weapon.mainhand with air
