execute if block ~ ~ ~ #smithed.actionbar:v0.7.0/lockable align xyz positioned ~0.5 ~ ~0.5 run function smithed.actionbar:v0.7.0/vanilla/container/check_lock
scoreboard players remove $ray smithed.actionbar.temp 1
execute unless block ~ ~ ~ #smithed.actionbar:v0.7.0/lockable if score $ray smithed.actionbar.temp matches 1.. positioned ^ ^ ^0.1 run function smithed.actionbar:v0.7.0/vanilla/container/raycast
