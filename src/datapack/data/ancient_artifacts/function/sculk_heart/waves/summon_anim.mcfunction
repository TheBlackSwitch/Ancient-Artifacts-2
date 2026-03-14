execute unless score @s lifetime matches -100.. store result score @s lifetime run random value -200..-50

execute if score @s lifetime matches ..0 run data merge entity @s {attributes:[{id:"scale",base:0.001}],active_effects:[{id:"invisibility",show_particles:false,duration:-1,amplifier:1}],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score @s lifetime matches 1 run data merge entity @s {attributes:[{id:"scale",base:1}],Invulnerable:0b,NoAI:0b,Silent:0b}
execute if score @s lifetime matches 1 run effect clear @s invisibility

execute if score @s lifetime matches 1..20 at @s run tp @s ~ ~0.1 ~
execute if score @s lifetime matches 1..20 run playsound block.sculk.break neutral @a ~ ~ ~ 0.5 1
execute if score @s lifetime matches 1..20 run particle trial_spawner_detection_ominous ~ ~ ~ 0.2 0.4 0.2 0 5 force
execute if score @s lifetime matches 1 run playsound entity.warden.emerge neutral @a ~ ~ ~ 0.2 2
execute if score @s lifetime matches 1..20 at @n[type=marker,tag=summon_loc,tag=particles] run particle block{block_state:"sculk"} ~ ~ ~ 0.6 0.1 0.6 0.1 10 force
execute if score @s lifetime matches 1..20 at @n[type=marker,tag=summon_loc,tag=particles] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.1 0.6 0 3 force
execute if score @s lifetime matches 20 run kill @n[tag=summon_loc,tag=particles]
execute if score @s lifetime matches 20 run tag @s remove sculk_sumon_anim
scoreboard players add @s lifetime 1
