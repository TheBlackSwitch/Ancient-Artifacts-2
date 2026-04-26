data modify storage smithed.actionbar:input message set value {priority: "notification", freeze: 20}
function #smithed.actionbar:event/player/on_click_locked_container
execute if score $locked smithed.actionbar.temp matches 1 run function #smithed.actionbar:message
