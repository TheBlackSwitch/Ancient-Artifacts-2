scoreboard players add @s smithed.actionbar.priority 0
execute if data storage smithed.actionbar:input message run scoreboard players set $priority smithed.actionbar.temp 99
execute if data storage smithed.actionbar:input message{priority: "override"} run scoreboard players set $priority smithed.actionbar.temp 1
execute if data storage smithed.actionbar:input message{priority: "notification"} run scoreboard players set $priority smithed.actionbar.temp 2
execute if data storage smithed.actionbar:input message{priority: "conditional"} run scoreboard players set $priority smithed.actionbar.temp 3
execute if data storage smithed.actionbar:input message{priority: "persistent"} run scoreboard players set $priority smithed.actionbar.temp 4
execute unless data storage smithed.actionbar:input message.priority run scoreboard players set $priority smithed.actionbar.temp 99
execute store result score $freeze smithed.actionbar.temp run data get storage smithed.actionbar:input message.freeze
execute unless data storage smithed.actionbar:input message.freeze run scoreboard players operation $freeze smithed.actionbar.temp = $default.freeze smithed.actionbar.const
execute unless score @s smithed.actionbar.priority matches 1 if score $priority smithed.actionbar.temp <= @s smithed.actionbar.priority run function smithed.actionbar:v0.7.0/display
execute if score @s smithed.actionbar.priority matches 0 run function smithed.actionbar:v0.7.0/display
