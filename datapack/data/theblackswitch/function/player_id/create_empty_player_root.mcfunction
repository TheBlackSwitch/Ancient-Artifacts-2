
data modify storage theblackswitch:player_storage players append value {}

scoreboard players remove .loop temp 1
execute if score .loop temp matches 1.. run function theblackswitch:player_id/create_empty_player_root