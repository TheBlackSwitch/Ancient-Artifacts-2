execute if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[type=right] store success score $locked smithed.actionbar.temp if data block ~-1 ~ ~ Lock
execute if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[type=left] store success score $locked smithed.actionbar.temp if data block ~1 ~ ~ Lock
execute if score $locked smithed.actionbar.temp matches 1 if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[type=right] run data modify storage smithed.actionbar:data block set from block ~-1 ~ ~ {}
execute if score $locked smithed.actionbar.temp matches 1 if block ~ ~ ~ #smithed.actionbar:v0.7.0/chests[type=left] run data modify storage smithed.actionbar:data block set from block ~1 ~ ~ {}
