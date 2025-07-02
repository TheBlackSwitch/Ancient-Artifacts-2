#--------------------REQUIREMENTS-------------------------
# 1. Run as target player
# 2. Macro entry: overlay = the overlay texture path
# 3. Do Sound: if it should play the equip sound
#---------------------------------------------------------

execute store result storage theblackswitch:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
tag @s add tbs.used_overlay
$data modify storage theblackswitch:temp player_storage.value set value {texture:"$(overlay)",enable_sound:$(do_sound)}
data modify storage theblackswitch:temp player_storage merge value {path:"tbs_current_overlay",source:"storage theblackswitch:temp player_storage.value"}
function theblackswitch:player_storage/set_from with storage theblackswitch:temp player_storage
data remove storage theblackswitch:temp player_storage 
function theblackswitch:overlay/internal/run