scoreboard players set $facing_resolved smithed.actionbar.temp 0
execute if score $facing_resolved smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[facing=north] run function smithed.actionbar:v0.7.0/vanilla/container/check_double_chest_lock/north
execute if score $facing_resolved smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[facing=east] run function smithed.actionbar:v0.7.0/vanilla/container/check_double_chest_lock/east
execute if score $facing_resolved smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[facing=south] run function smithed.actionbar:v0.7.0/vanilla/container/check_double_chest_lock/south
execute if score $facing_resolved smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[facing=west] run function smithed.actionbar:v0.7.0/vanilla/container/check_double_chest_lock/west
