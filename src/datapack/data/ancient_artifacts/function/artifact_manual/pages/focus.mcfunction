data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual data.unlocked

data remove storage ancient_artifacts:manual unlocked.all

# Get all unlocked artifacts from the player's storage
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.all.overworld",path:"unlocked.artifact.overworld"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.all.nether",path:"unlocked.artifact.nether"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.all.deep_dark",path:"unlocked.artifact.deep_dark"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage
data modify storage ancient_artifacts:temp player_storage merge value {result:"ancient_artifacts:manual unlocked.all.end",path:"unlocked.artifact.end"}
function #theblackswitch:__version__/player_storage/get with storage ancient_artifacts:temp player_storage

data remove storage ancient_artifacts:temp player_storage

scoreboard players set .1 temp 0
#Check if other artifacts unlocked
execute store success score .1 temp run data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual unlocked.all
#fail if no changes detected

execute if score .1 temp matches 0 run return fail

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}}:
    loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/focus

    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"poison_amulet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/poison_amulet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"deactivation_crown"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/deactivation_crown
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"farmers_boots"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/farmers_boots
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"burning_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/burning_ring
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"smelting_tiara"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/smelting_tiara
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"tinkering_tiara"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/tinkering_tiara
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"borla_of_vision"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/borla_of_vision
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"sonic_crystal"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/sonic_crystal
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"detecting_borla"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/detecting_borla
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"slowing_circlet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/slowing_circlet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"knockback_watch"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/knockback_watch
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"dragons_breath_circlet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/dragons_breath_circlet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"allies_amulet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/allies_amulet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"shockwave_bracelet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/shockwave_bracelet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"divers_boots"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/divers_boots
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"fireball_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/fireball_ring
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"saturating_necklace"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/saturating_necklace
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"builders_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/builders_ring
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"echoing_chain"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/echoing_chain
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"echolocating_borla"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/echolocating_borla
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"recycling_crystal"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/recycling_crystal
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"shrinking_anklet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/shrinking_anklet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"attractive_toe_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/attractive_toe_ring
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"gravitation_toe_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/gravitation_toe_ring
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"pulse_watch"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/pulse_watch
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"miners_crown"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/miners_crown
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"travelers_boots"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/travelers_boots
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"reaching_bracelet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/reaching_bracelet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"healing_amulet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/healing_amulet
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"thermal_tiara"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/thermal_tiara
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"raging_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/raging_ring
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"cooling_boots"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/cooling_boots
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"beefy_crystal"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/beefy_crystal
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"strengthening_anklet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/strengthening_anklet
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"bulky_chain"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/bulky_chain
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"landing_toe_ring"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/landing_toe_ring
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"deflecting_circlet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/deflecting_circlet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"radiant_watch"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/radiant_watch
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"levitation_medal"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/levitation_medal
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"conductive_bracelet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/conductive_bracelet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"final_shout_crown"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/final_shout_crown
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"explorers_boots"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/explorers_boots
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"withering_necklace"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/withering_necklace
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"looting_tiara"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/looting_tiara
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"life_steal_necklace"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/life_steal_necklace
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"combo_boots"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/combo_boots
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"experienced_chain"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/experienced_chain
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"anklet_of_peace"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/anklet_of_peace
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"recovery_anklet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/recovery_anklet
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"necromancy_anklet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/necromancy_anklet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"storing_circlet"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/storing_circlet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"voiding_medal"}]}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/focus/voiding_medal

execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}}:
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"poison_amulet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/poison_amulet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"deactivation_crown"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/deactivation_crown
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"farmers_boots"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/farmers_boots
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"burning_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/burning_ring
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"smelting_tiara"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/smelting_tiara
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"tinkering_tiara"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/tinkering_tiara
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"borla_of_vision"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/borla_of_vision
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"sonic_crystal"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/sonic_crystal
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"detecting_borla"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/detecting_borla
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"slowing_circlet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/slowing_circlet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"knockback_watch"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/knockback_watch
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"dragons_breath_circlet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/dragons_breath_circlet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"allies_amulet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/allies_amulet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"shockwave_bracelet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/shockwave_bracelet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"divers_boots"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/divers_boots
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"fireball_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/fireball_ring
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"saturating_necklace"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/saturating_necklace
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"builders_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/builders_ring
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"echoing_chain"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/echoing_chain
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"echolocating_borla"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/echolocating_borla
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"recycling_crystal"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/recycling_crystal
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"shrinking_anklet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/shrinking_anklet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"attractive_toe_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/attractive_toe_ring
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"gravitation_toe_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/gravitation_toe_ring
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"pulse_watch"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/pulse_watch
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"miners_crown"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/miners_crown
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"travelers_boots"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/travelers_boots
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"reaching_bracelet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/reaching_bracelet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"healing_amulet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/healing_amulet
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"thermal_tiara"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/thermal_tiara
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"raging_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/raging_ring
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"cooling_boots"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/cooling_boots
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"beefy_crystal"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/beefy_crystal
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"strengthening_anklet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/strengthening_anklet
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"bulky_chain"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/bulky_chain
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"landing_toe_ring"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/landing_toe_ring
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"deflecting_circlet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/deflecting_circlet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"radiant_watch"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/radiant_watch
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"levitation_medal"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/levitation_medal
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"conductive_bracelet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/conductive_bracelet
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"final_shout_crown"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/final_shout_crown
    execute if data storage ancient_artifacts:manual {changed:{overworld:[{id:"explorers_boots"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/explorers_boots
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"withering_necklace"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/withering_necklace
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"looting_tiara"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/looting_tiara
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"life_steal_necklace"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/life_steal_necklace
    execute if data storage ancient_artifacts:manual {changed:{nether:[{id:"combo_boots"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/combo_boots
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"experienced_chain"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/experienced_chain
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"anklet_of_peace"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/anklet_of_peace
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"recovery_anklet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/recovery_anklet
    execute if data storage ancient_artifacts:manual {changed:{deep_dark:[{id:"necromancy_anklet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/necromancy_anklet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"storing_circlet"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/storing_circlet
    execute if data storage ancient_artifacts:manual {changed:{end:[{id:"voiding_medal"}]}} run item modify entity @s weapon.offhand ancient_artifacts:manual/focus/voiding_medal

##Reset
data modify storage ancient_artifacts:manual modify.slot set from storage ancient_artifacts:manual data.slot
data modify storage ancient_artifacts:manual modify.data.data.unlocked set from storage ancient_artifacts:manual unlocked.all
data modify storage ancient_artifacts:manual modify.data.data.checked set from storage ancient_artifacts:manual unlocked.all
data modify storage ancient_artifacts:manual modify.data.data.checked.overworld[].check set value "✔"
data modify storage ancient_artifacts:manual modify.data.data.checked.nether[].check set value "✔"
data modify storage ancient_artifacts:manual modify.data.data.checked.end[].check set value "✔"
data modify storage ancient_artifacts:manual modify.data.data.checked.deep_dark[].check set value "✔"
function ancient_artifacts:artifact_manual/pages/modify_custom_data with storage ancient_artifacts:manual modify

execute if data storage ancient_artifacts:manual {data:{slot:"mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/contents/focus
execute if data storage ancient_artifacts:manual {data:{slot:"offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/contents/focus