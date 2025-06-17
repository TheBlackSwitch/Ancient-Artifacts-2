data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual data.unlocked

data modify storage ancient_artifacts:manual unlocked.overworld set value []
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.overworld",path:"unlocked.artifact.overworld"}
function theblackswitch:player_storage/get with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage

scoreboard players set .1 temp 0
#Check if other artifacts unlocked
execute store success score .1 temp run data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual unlocked.overworld
#fail if no changes detected
execute if score .1 temp matches 0 run return fail

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/overworld

execute if data storage ancient_artifacts:manual {changed:[{id:"poison_amulet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/poison_amulet
execute if data storage ancient_artifacts:manual {changed:[{id:"allies_amulet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/allies_amulet
execute if data storage ancient_artifacts:manual {changed:[{id:"miners_crown"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/miners_crown
execute if data storage ancient_artifacts:manual {changed:[{id:"farmers_boots"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/farmers_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"healing_amulet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/healing_amulet
execute if data storage ancient_artifacts:manual {changed:[{id:"shockwave_bracelet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/shockwave_bracelet
execute if data storage ancient_artifacts:manual {changed:[{id:"divers_boots"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/divers_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"deactivation_crown"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/deactivation_crown
execute if data storage ancient_artifacts:manual {changed:[{id:"travelers_boots"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/travelers_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"reaching_bracelet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/reaching_bracelet
execute if data storage ancient_artifacts:manual {changed:[{id:"conductive_bracelet"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/conductive_bracelet
execute if data storage ancient_artifacts:manual {changed:[{id:"final_shout_crown"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/final_shout_crown
execute if data storage ancient_artifacts:manual {changed:[{id:"explorers_boots"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/overworld/explorers_boots

execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/overworld

execute if data storage ancient_artifacts:manual {changed:[{id:"poison_amulet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/poison_amulet
execute if data storage ancient_artifacts:manual {changed:[{id:"allies_amulet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/allies_amulet
execute if data storage ancient_artifacts:manual {changed:[{id:"miners_crown"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/miners_crown
execute if data storage ancient_artifacts:manual {changed:[{id:"farmers_boots"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/farmers_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"healing_amulet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/healing_amulet
execute if data storage ancient_artifacts:manual {changed:[{id:"shockwave_bracelet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/shockwave_bracelet
execute if data storage ancient_artifacts:manual {changed:[{id:"divers_boots"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/divers_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"deactivation_crown"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/deactivation_crown
execute if data storage ancient_artifacts:manual {changed:[{id:"travelers_boots"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/travelers_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"reaching_bracelet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/reaching_bracelet
execute if data storage ancient_artifacts:manual {changed:[{id:"conductive_bracelet"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/conductive_bracelet
execute if data storage ancient_artifacts:manual {changed:[{id:"final_shout_crown"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/final_shout_crown
execute if data storage ancient_artifacts:manual {changed:[{id:"explorers_boots"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/overworld/explorers_boots

##Reset
data modify storage ancient_artifacts:manual modify.slot set from storage ancient_artifacts:manual data.slot
data modify storage ancient_artifacts:manual modify.data.data.unlocked set from storage ancient_artifacts:manual unlocked.overworld
data modify storage ancient_artifacts:manual modify.data.data.checked set from storage ancient_artifacts:manual unlocked.overworld
data modify storage ancient_artifacts:manual modify.data.data.checked[].check set value "✔"
function ancient_artifacts:artifact_manual/pages/modify_custom_data with storage ancient_artifacts:manual modify

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/contents/overworld
execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/contents/overworld