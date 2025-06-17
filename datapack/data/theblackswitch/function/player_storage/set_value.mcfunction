#--------------------------REQUIREMENTS-----------------------------
# 1. Macro entry: value = the value to store
# 2. Macro entry: player_id = the player id
# 3. Macro entry: path = the path to look at
#-------------------------------------------------------------------

$data modify storage theblackswitch:player_storage players[$(player_id)].$(path) set value $(value)