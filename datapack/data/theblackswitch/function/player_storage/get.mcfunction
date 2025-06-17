#--------------------------REQUIREMENTS-----------------------------
# 1. Macro entry: result = the storage to store the retrieved value
# 2. Macro entry: player_id = the player id
# 3. Macro entry: path = the path to look at
#-------------------------------------------------------------------

$data modify storage $(result) set from \
 storage theblackswitch:player_storage \
  players[$(player_id)].$(path)