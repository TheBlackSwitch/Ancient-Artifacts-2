data modify storage theblackswitch:temp current_pack set from storage theblackswitch:temp packs[0]

function theblackswitch:version_control/check_pack

data remove storage theblackswitch:temp packs[0]

execute if data storage theblackswitch:temp packs[0] run function theblackswitch:version_control/loop