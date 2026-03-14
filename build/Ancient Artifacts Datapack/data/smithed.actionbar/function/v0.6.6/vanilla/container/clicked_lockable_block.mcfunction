advancement revoke @s only smithed.actionbar:v0.6.6/vanilla/container/clicked_lockable_block
scoreboard players set $ray smithed.actionbar.temp 50
execute anchored eyes positioned ^ ^ ^ run function smithed.actionbar:v0.6.6/vanilla/container/raycast
