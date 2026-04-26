execute unless score $is_server smithed.actionbar.temp matches 1.. run function smithed.actionbar:v0.7.0/vanilla/bed/get_server_status
execute store result score $sleeping_percent smithed.actionbar.temp run gamerule players_sleeping_percentage
execute if score $sleeping_percent smithed.actionbar.temp matches 101.. run function #smithed.actionbar:message
execute if score $is_server smithed.actionbar.temp matches 1 if score $sleeping_percent smithed.actionbar.temp matches ..100 run function smithed.actionbar:v0.7.0/vanilla/bed/send_sleep_status
