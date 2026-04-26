tag @s[advancements={smithed.actionbar:v0.7.0/vanilla/bed/clicked_bed={occupied=true}}] add smithed.actionbar.occupied
tag @s[advancements={smithed.actionbar:v0.7.0/vanilla/bed/clicked_bed={occupied_empty=true}}] add smithed.actionbar.occupied
tag @s[advancements={smithed.actionbar:v0.7.0/vanilla/bed/slept_in_bed={requirement=true}}] add smithed.actionbar.sleeping
advancement revoke @s only smithed.actionbar:v0.7.0/vanilla/bed/clicked_bed
advancement revoke @s only smithed.actionbar:v0.7.0/vanilla/bed/slept_in_bed
data modify storage smithed.actionbar:input message set value {priority: "notification", freeze: 20}
execute if entity @s[tag=!smithed.actionbar.sleeping] run function #smithed.actionbar:message
execute if entity @s[tag=smithed.actionbar.sleeping] run function smithed.actionbar:v0.7.0/vanilla/bed/check_sleep_status
tag @s remove smithed.actionbar.occupied
