execute as @a[x=0] run function #smithed.actionbar:message
execute store result score $dimension_players_expected smithed.actionbar.sleep_t if entity @a[x=0]
scoreboard players set @s smithed.actionbar.sleep_t 2
scoreboard players add $sleep_count_expected smithed.actionbar.temp 1
schedule function smithed.actionbar:v0.6.6/vanilla/bed/track_leave_bed 1 replace
