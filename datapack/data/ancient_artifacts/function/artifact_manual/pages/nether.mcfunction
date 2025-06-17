data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual data.unlocked

data modify storage ancient_artifacts:manual unlocked.nether set value []
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.nether",path:"unlocked.artifact.nether"}
function theblackswitch:player_storage/get with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage

scoreboard players set .1 temp 0
#Check if other artifacts unlocked
execute store success score .1 temp run data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual unlocked.nether
#fail if no changes detected
execute if score .1 temp matches 0 run return fail

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/nether

execute if data storage ancient_artifacts:manual {changed:[{id:"burning_ring"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/burning_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"smelting_tiara"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/smelting_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"tinkering_tiara"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/tinkering_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"fireball_ring"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/fireball_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"saturating_necklace"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/saturating_necklace
execute if data storage ancient_artifacts:manual {changed:[{id:"builders_ring"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/builders_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"thermal_tiara"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/thermal_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"raging_ring"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/raging_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"cooling_boots"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/cooling_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"withering_necklace"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/withering_necklace
execute if data storage ancient_artifacts:manual {changed:[{id:"looting_tiara"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/looting_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"life_steal_necklace"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/life_steal_necklace
execute if data storage ancient_artifacts:manual {changed:[{id:"combo_boots"}],data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/nether/combo_boots

execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/nether

execute if data storage ancient_artifacts:manual {changed:[{id:"burning_ring"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/burning_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"smelting_tiara"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/smelting_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"tinkering_tiara"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/tinkering_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"fireball_ring"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/fireball_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"saturating_necklace"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/saturating_necklace
execute if data storage ancient_artifacts:manual {changed:[{id:"builders_ring"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/builders_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"thermal_tiara"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/thermal_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"raging_ring"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/raging_ring
execute if data storage ancient_artifacts:manual {changed:[{id:"cooling_boots"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/cooling_boots
execute if data storage ancient_artifacts:manual {changed:[{id:"withering_necklace"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/withering_necklace
execute if data storage ancient_artifacts:manual {changed:[{id:"looting_tiara"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/looting_tiara
execute if data storage ancient_artifacts:manual {changed:[{id:"life_steal_necklace"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/life_steal_necklace
execute if data storage ancient_artifacts:manual {changed:[{id:"combo_boots"}],data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/nether/combo_boots


##Reset
data modify storage ancient_artifacts:manual modify.slot set from storage ancient_artifacts:manual data.slot
data modify storage ancient_artifacts:manual modify.data.data.unlocked set from storage ancient_artifacts:manual unlocked.nether
data modify storage ancient_artifacts:manual modify.data.data.checked set from storage ancient_artifacts:manual unlocked.nether
data modify storage ancient_artifacts:manual modify.data.data.checked[].check set value "✔"
function ancient_artifacts:artifact_manual/pages/modify_custom_data with storage ancient_artifacts:manual modify

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/contents/nether
execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/contents/nether