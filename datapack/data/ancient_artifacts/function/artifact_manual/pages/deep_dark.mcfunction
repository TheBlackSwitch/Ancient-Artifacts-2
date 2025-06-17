data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual data.unlocked

data modify storage ancient_artifacts:manual unlocked.deep_dark set value []
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.deep_dark",path:"unlocked.artifact.deep_dark"}
function theblackswitch:player_storage/get with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage

scoreboard players set .1 temp 0
#Check if other artifacts unlocked
execute store success score .1 temp run data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual unlocked.deep_dark
#fail if no changes detected
execute if score .1 temp matches 0 run return fail

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/deep_dark

execute if data storage ancient_artifacts:manual {changed:[{id:"borla_of_vision"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/borla_of_vision
execute if data storage ancient_artifacts:manual {changed:[{id:"experienced_chain"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/experienced_chain
execute if data storage ancient_artifacts:manual {changed:[{id:"anklet_of_peace"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/anklet_of_peace
execute if data storage ancient_artifacts:manual {changed:[{id:"beefy_crystal"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/beefy_crystal
execute if data storage ancient_artifacts:manual {changed:[{id:"echoing_chain"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/echoing_chain
execute if data storage ancient_artifacts:manual {changed:[{id:"sonic_crystal"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/sonic_crystal
execute if data storage ancient_artifacts:manual {changed:[{id:"echolocating_borla"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/echolocating_borla
execute if data storage ancient_artifacts:manual {changed:[{id:"detecting_borla"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/detecting_borla
execute if data storage ancient_artifacts:manual {changed:[{id:"strengthening_anklet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/strengthening_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"recovery_anklet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/recovery_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"recycling_crystal"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/recycling_crystal
execute if data storage ancient_artifacts:manual {changed:[{id:"shrinking_anklet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/shrinking_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"necromancy_anklet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/necromancy_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"bulky_chain"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/deep_dark/bulky_chain

execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/deep_dark

execute if data storage ancient_artifacts:manual {changed:[{id:"borla_of_vision"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/borla_of_vision
execute if data storage ancient_artifacts:manual {changed:[{id:"experienced_chain"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/experienced_chain
execute if data storage ancient_artifacts:manual {changed:[{id:"anklet_of_peace"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/anklet_of_peace
execute if data storage ancient_artifacts:manual {changed:[{id:"beefy_crystal"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/beefy_crystal
execute if data storage ancient_artifacts:manual {changed:[{id:"echoing_chain"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/echoing_chain
execute if data storage ancient_artifacts:manual {changed:[{id:"sonic_crystal"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/sonic_crystal
execute if data storage ancient_artifacts:manual {changed:[{id:"echolocating_borla"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/echolocating_borla
execute if data storage ancient_artifacts:manual {changed:[{id:"detecting_borla"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/detecting_borla
execute if data storage ancient_artifacts:manual {changed:[{id:"strengthening_anklet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/strengthening_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"recovery_anklet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/recovery_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"recycling_crystal"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/recycling_crystal
execute if data storage ancient_artifacts:manual {changed:[{id:"shrinking_anklet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/shrinking_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"necromancy_anklet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/necromancy_anklet
execute if data storage ancient_artifacts:manual {changed:[{id:"bulky_chain"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/deep_dark/bulky_chain


##Reset
data modify storage ancient_artifacts:manual modify.slot set from storage ancient_artifacts:manual data.slot
data modify storage ancient_artifacts:manual modify.data.data.unlocked set from storage ancient_artifacts:manual unlocked.deep_dark
data modify storage ancient_artifacts:manual modify.data.data.checked set from storage ancient_artifacts:manual unlocked.deep_dark
data modify storage ancient_artifacts:manual modify.data.data.checked[].check set value "✔"
function ancient_artifacts:artifact_manual/pages/modify_custom_data with storage ancient_artifacts:manual modify

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/contents/deep_dark
execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/contents/deep_dark