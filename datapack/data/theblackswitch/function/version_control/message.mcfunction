tellraw @a [{"text": "","color": "red"},{"text": "[Server]: ","color": "white"},{"nbt":"current_pack.pack","storage": "theblackswitch:temp","color":"gold"}, \
{"text":" (V","color":"gold"},{"nbt": "current_pack.version[0]","storage": "theblackswitch:temp","extra": ["."],"color":"gold"},{"nbt": "current_pack.version[1]", \
"storage": "theblackswitch:temp","extra": ["."],"color":"gold"},{"nbt": "current_pack.version[2]","storage": "theblackswitch:temp","extra": [".)"],"color":"gold"}, \
{"text":" requires a newer version of tbs.common_code! \n"}, \
{"text":" Possible solutions: \n","bold": true}, \
{"text": "  Update ","color":"green"},{"nbt":"lib.loaded_from","storage":"theblackswitch:versions","color":"gold"}, {"text":" to the latest version possible. \n","color":"green"}, \
{"text": "  Downgrade ","color":"yellow"},{"nbt":"current_pack.pack","storage":"theblackswitch:temp","color":"gold"},{"text":" to a version compatable with ","color":"yellow"}, \
{"nbt":"lib.loaded_from","storage":"theblackswitch:versions","color":"gold","extra": ["(if that exists). \n"]}]

data modify storage theblackswitch:versions compatable set value false