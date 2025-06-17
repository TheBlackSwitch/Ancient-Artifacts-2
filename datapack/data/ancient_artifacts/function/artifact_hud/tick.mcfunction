execute store result storage ancient_artifacts:hud playerID int 1.0 run scoreboard players get @s tbs.ID

function ancient_artifacts:artifact_hud/bossbar/remove with storage ancient_artifacts:hud

scoreboard players set .icon_count temp 0

data remove storage ancient_artifacts:hud text

##Add text to bossbar
execute if entity @s[tag=final_shout_crown] run function ancient_artifacts:artifact_hud/font/final_shout_crown
execute if entity @s[tag=explorers_boots] run function ancient_artifacts:artifact_hud/font/explorers_boots
execute if entity @s[tag=saturating_necklace] run function ancient_artifacts:artifact_hud/font/saturating_necklace
execute if entity @s[tag=life_steal_necklace] run function ancient_artifacts:artifact_hud/font/life_steal_necklace
execute if entity @s[tag=sonic_crystal] run function ancient_artifacts:artifact_hud/font/sonic_crystal
execute if entity @s[tag=levitation_medal] run function ancient_artifacts:artifact_hud/font/levitation_medal
execute if entity @s[tag=dragons_breath_circlet] run function ancient_artifacts:artifact_hud/font/dragons_breath_circlet
execute if entity @s[tag=borla_of_vision] run function ancient_artifacts:artifact_hud/font/borla_of_vision
execute if entity @s[tag=storing_circlet] run function ancient_artifacts:artifact_hud/font/storing_circlet

execute if score .icon_count temp matches 0 run return fail

##set background bar
#1 icon
execute if score .icon_count temp matches 1 run data modify storage ancient_artifacts:hud text_1 set value {"text":"\uF808\uF803","color":"#4e5c24","bold":false,"italic":false}
execute if score .icon_count temp matches 1 run data modify storage ancient_artifacts:hud text_2 set value {"text":"\u0001","font":"minecraft:artifact_hud"}
execute if score .icon_count temp matches 1 run data modify storage ancient_artifacts:hud text_3 set value {"text":"\uF809\uF808\uF804"}
#2 icons
execute if score .icon_count temp matches 2 run data modify storage ancient_artifacts:hud text_1 set value {"text":"\uF808\uF803","color":"#4e5c24","bold":false,"italic":false}
execute if score .icon_count temp matches 2 run data modify storage ancient_artifacts:hud text_2 set value {"text":"\u0002","font":"minecraft:artifact_hud"}
execute if score .icon_count temp matches 2 run data modify storage ancient_artifacts:hud text_3 set value {"text":"\uF80A\uF808\uF804"}
#3 icons
execute if score .icon_count temp matches 3 run data modify storage ancient_artifacts:hud text_1 set value {"text":"\uF808\uF805","color":"#4e5c24","bold":false,"italic":false}
execute if score .icon_count temp matches 3 run data modify storage ancient_artifacts:hud text_2 set value {"text":"\u0003","font":"minecraft:artifact_hud"}
execute if score .icon_count temp matches 3 run data modify storage ancient_artifacts:hud text_3 set value {"text":"\uF80B\uF802"}

data remove storage ancient_artifacts:hud text_4
data remove storage ancient_artifacts:hud text_5
data remove storage ancient_artifacts:hud text_6

#seporate texts
data modify storage ancient_artifacts:hud text_4 set from storage ancient_artifacts:hud text[0]
data modify storage ancient_artifacts:hud text_5 set from storage ancient_artifacts:hud text[1]
data modify storage ancient_artifacts:hud text_6 set from storage ancient_artifacts:hud text[2]

execute unless data storage ancient_artifacts:hud text_5 run data modify storage ancient_artifacts:hud text_5 set value {"text":""}
execute unless data storage ancient_artifacts:hud text_6 run data modify storage ancient_artifacts:hud text_6 set value {"text":""}
##Build bossbar
function ancient_artifacts:artifact_hud/bossbar/build with storage ancient_artifacts:hud
