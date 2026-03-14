execute if data storage smithed.actionbar:input message.raw run title @s actionbar {storage: "smithed.actionbar:input", nbt: "message.raw"}
execute if data storage smithed.actionbar:input message.json run title @s actionbar {storage: "smithed.actionbar:input", nbt: "message.json", interpret: true}
scoreboard players operation @s smithed.actionbar.freeze = $freeze smithed.actionbar.temp
scoreboard players operation @s smithed.actionbar.freeze > $min.freeze smithed.actionbar.const
scoreboard players operation @s smithed.actionbar.freeze < $max.freeze smithed.actionbar.const
execute unless score @s smithed.actionbar.freeze matches 0 run scoreboard players operation @s smithed.actionbar.priority = $priority smithed.actionbar.temp
