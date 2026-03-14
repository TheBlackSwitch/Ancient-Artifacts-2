scoreboard players set $locked smithed.actionbar.temp 0
execute store success score $locked smithed.actionbar.temp if data block ~ ~ ~ Lock
execute if score $locked smithed.actionbar.temp matches 1 run data modify storage smithed.actionbar:data block set from block ~ ~ ~ {}
execute if score $locked smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:v0.6.6/chests unless block ~ ~ ~ #smithed.actionbar:v0.6.6/chests[type=single] run function smithed.actionbar:v0.6.6/vanilla/container/check_double_chest_lock
execute if score $locked smithed.actionbar.temp matches 1 run function smithed.actionbar:v0.6.6/vanilla/container/send_message
