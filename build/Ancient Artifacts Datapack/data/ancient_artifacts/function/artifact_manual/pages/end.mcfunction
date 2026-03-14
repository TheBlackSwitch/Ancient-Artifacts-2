data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual data.unlocked
data modify storage ancient_artifacts:manual unlocked.end set value []
data modify storage ancient_artifacts:temp player_storage.path set value "unlocked.artifact.end"
data modify storage ancient_artifacts:temp player_storage.result set value "ancient_artifacts:manual unlocked.end"
function #theblackswitch:v2.0/player_storage/get with storage ancient_artifacts:temp player_storage
data remove storage ancient_artifacts:temp player_storage
scoreboard players set .1 temp 0
execute store success score .1 temp run data modify storage ancient_artifacts:manual changed set from storage ancient_artifacts:manual unlocked.end
execute if score .1 temp matches 0 run return fail
execute if data storage ancient_artifacts:manual {data: {slot: "mainhand"}} run loot replace entity @s weapon.mainhand loot ancient_artifacts:item/manual/end
execute if data storage ancient_artifacts:manual {changed: [{id: "slowing_circlet"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/slowing_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "knockback_watch"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/knockback_watch
execute if data storage ancient_artifacts:manual {changed: [{id: "dragons_breath_circlet"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/dragons_breath_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "attractive_toe_ring"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/attractive_toe_ring
execute if data storage ancient_artifacts:manual {changed: [{id: "gravitation_toe_ring"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/gravitation_toe_ring
execute if data storage ancient_artifacts:manual {changed: [{id: "pulse_watch"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/pulse_watch
execute if data storage ancient_artifacts:manual {changed: [{id: "landing_toe_ring"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/landing_toe_ring
execute if data storage ancient_artifacts:manual {changed: [{id: "deflecting_circlet"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/deflecting_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "radiant_watch"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/radiant_watch
execute if data storage ancient_artifacts:manual {changed: [{id: "levitation_medal"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/levitation_medal
execute if data storage ancient_artifacts:manual {changed: [{id: "storing_circlet"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/storing_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "voiding_medal"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/voiding_medal
execute if data storage ancient_artifacts:manual {changed: [{id: "focus_medal"}], data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/end/focus_medal
execute if data storage ancient_artifacts:manual {data: {slot: "offhand"}} run loot replace entity @s weapon.offhand loot ancient_artifacts:item/manual/end
execute if data storage ancient_artifacts:manual {changed: [{id: "slowing_circlet"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/slowing_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "knockback_watch"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/knockback_watch
execute if data storage ancient_artifacts:manual {changed: [{id: "dragons_breath_circlet"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/dragons_breath_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "attractive_toe_ring"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/attractive_toe_ring
execute if data storage ancient_artifacts:manual {changed: [{id: "gravitation_toe_ring"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/gravitation_toe_ring
execute if data storage ancient_artifacts:manual {changed: [{id: "pulse_watch"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/pulse_watch
execute if data storage ancient_artifacts:manual {changed: [{id: "landing_toe_ring"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/landing_toe_ring
execute if data storage ancient_artifacts:manual {changed: [{id: "deflecting_circlet"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/deflecting_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "radiant_watch"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/radiant_watch
execute if data storage ancient_artifacts:manual {changed: [{id: "levitation_medal"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/levitation_medal
execute if data storage ancient_artifacts:manual {changed: [{id: "storing_circlet"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/storing_circlet
execute if data storage ancient_artifacts:manual {changed: [{id: "voiding_medal"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/voiding_medal
execute if data storage ancient_artifacts:manual {changed: [{id: "focus_medal"}], data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/end/focus_medal
data modify storage ancient_artifacts:manual modify.slot set from storage ancient_artifacts:manual data.slot
data modify storage ancient_artifacts:manual modify.data.data.unlocked set from storage ancient_artifacts:manual unlocked.end
data modify storage ancient_artifacts:manual modify.data.data.checked set from storage ancient_artifacts:manual unlocked.end
data modify storage ancient_artifacts:manual modify.data.data.checked[].check set value "\u2714"
function ancient_artifacts:artifact_manual/pages/modify_custom_data with storage ancient_artifacts:manual modify
execute if data storage ancient_artifacts:manual {data: {slot: "mainhand"}} run item modify entity @s weapon.mainhand ancient_artifacts:manual/contents/end
execute if data storage ancient_artifacts:manual {data: {slot: "offhand"}} run item modify entity @s weapon.offhand ancient_artifacts:manual/contents/end
