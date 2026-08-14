tag @s remove recover_inv
scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search] run scoreboard players add @s inventories_recovered 1
execute as @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search] unless score @s recover_time matches 1.. run scoreboard players set @s recover_time 1200
xp set @s 0 levels
xp set @s 0 points
execute as @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search, tag=recovery_xp] run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/xp
execute store result storage ancient_artifacts:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage ancient_artifacts:temp player_storage.path set value "recovery_inv"
data modify storage ancient_artifacts:temp player_storage.result set value "ancient_artifacts:player recovery_inv"
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
data modify storage ancient_artifacts:temp player_storage.path set value "recovery_equip"
data modify storage ancient_artifacts:temp player_storage.result set value "ancient_artifacts:player recovery_equip"
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/fix_equipment
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/loop
kill @n[type=marker, tag=death_location, predicate=theblackswitch:v2.0/patch-4/player_id/match_search]
execute unless entity @s[tag=recovery_3] as @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search] run function ancient_artifacts:artifacts/reset
