execute if score @s animation matches 120 run summon lightning_bolt ~ ~0.5 ~
execute if score @s animation matches 110..120 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace fire

execute if score @s animation matches 50..100 if score #10 tbs.slow_tick = #10 tbs.random_delay run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 2
execute if score @s animation matches 50..100 if score #10 tbs.slow_tick = #10 tbs.random_delay run particle firework ~ ~0.5 ~ 0 0 0 0.3 10 force
execute if score @s animation matches 50..100 if score #10 tbs.slow_tick = #10 tbs.random_delay run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 0
execute if score @s animation matches 50..100 if score #10 tbs.slow_tick = #10 tbs.random_delay run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 0.5 1
execute if score @s animation matches 50..100 if score #10 tbs.slow_tick = #10 tbs.random_delay run function ancient_artifacts:ancient_altar/summon_bolt

execute if score @s animation matches 30 run playsound entity.warden.sonic_charge block @a ~ ~ ~ 1 1.2
execute if score @s animation matches 30 run particle portal ~ ~0.5 ~ 0 0 0 5 50 force

execute if score @s animation matches 10 run particle sonic_boom ~ ~0.5 ~ 0.3 0.3 0.3 0.3 5 force
execute if score @s animation matches 5 run particle firework ~ ~0.5 ~ 0 0 0 0.4 500 force
execute if score @s animation matches 1..5 run function ancient_artifacts:ancient_altar/summon_bolt
execute if score @s animation matches 1..5 run function ancient_artifacts:ancient_altar/summon_bolt
execute if score @s animation matches 5 run playsound entity.warden.sonic_boom block @a
execute if score @s animation matches 5 run playsound block.respawn_anchor.deplete block @a
execute if score @s animation matches 5 run scoreboard players add @a[distance=..8] destroyed 1
execute if score @s animation matches 5 run function ancient_artifacts:ancient_altar/artifracture/loot/drop_loot

scoreboard players remove @s animation 1
