execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
scoreboard objectives add tbs.ID dummy
execute if score .current tbs.ID > #current tbs.ID run scoreboard players operation #current tbs.ID = .current tbs.ID
execute store result score #entry_count temp if data storage theblackswitch:player_storage players[]
scoreboard players set #loop temp 100
execute if score #entry_count temp matches 1..99 run function theblackswitch:v2.0/patch-1/player_id/create_empty_player_root
