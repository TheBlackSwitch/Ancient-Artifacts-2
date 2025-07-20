##Put this in your own pack as a function "<namespace>:set_version.mcfunction" and schedule it 1t after load
data modify storage theblackswitch:versions packs append value {pack:"<pack_name>",version:[1,0,0],lib_version:[1,0,0]}
data modify storage theblackswitch:versions lib.loaded_from set value "<pack_name>"