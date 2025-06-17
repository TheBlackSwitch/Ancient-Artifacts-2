
execute store result score .required_0 temp run data get storage theblackswitch:temp current_pack.lib_version[0]
execute store result score .required_1 temp run data get storage theblackswitch:temp current_pack.lib_version[1]
execute store result score .required_2 temp run data get storage theblackswitch:temp current_pack.lib_version[2]

execute store result score .lib_0 temp run data get storage theblackswitch:versions lib.current[0]
execute store result score .lib_1 temp run data get storage theblackswitch:versions lib.current[1]
execute store result score .lib_2 temp run data get storage theblackswitch:versions lib.current[2]


execute if score .required_0 temp < .lib_0 temp run return fail
execute if score .required_0 temp > .lib_0 temp run return run function theblackswitch:version_control/message

execute if score .required_1 temp < .lib_1 temp run return fail
execute if score .required_1 temp > .lib_1 temp run return run function theblackswitch:version_control/message

execute if score .required_2 temp < .lib_2 temp run return fail
execute if score .required_2 temp > .lib_2 temp run return run function theblackswitch:version_control/message