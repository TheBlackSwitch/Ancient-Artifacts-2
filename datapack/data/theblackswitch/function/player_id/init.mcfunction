scoreboard objectives add tbs.ID dummy

#update to a fixed version
execute store result score .entry_count temp if data storage theblackswitch:player_storage players[]
scoreboard players set .loop temp 100
execute if score .entry_count temp matches 1..99 run function theblackswitch:player_id/create_empty_player_root