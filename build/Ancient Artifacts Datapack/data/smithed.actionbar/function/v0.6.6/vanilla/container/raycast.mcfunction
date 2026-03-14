execute if block ~ ~ ~ #smithed.actionbar:v0.6.6/lockable align xyz positioned ~0.5 ~ ~0.5 run function smithed.actionbar:v0.6.6/vanilla/container/check_lock
scoreboard players remove $ray smithed.actionbar.temp 1
execute unless block ~ ~ ~ #smithed.actionbar:v0.6.6/lockable if score $ray smithed.actionbar.temp matches 1.. positioned ^ ^ ^0.1 run function smithed.actionbar:v0.6.6/vanilla/container/raycast
