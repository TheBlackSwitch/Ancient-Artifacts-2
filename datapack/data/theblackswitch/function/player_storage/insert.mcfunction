#--------------------------REQUIREMENTS-----------------------------
# 1. Macro entry: result = the block/entity to store in
# 2. Macro entry: player_id = the player id
# 3. Macro entry: path = the path to look at
#-------------------------------------------------------------------

$data modify $(result) set from storage theblackswitch:player_storage players[$(player_id)].$(path)