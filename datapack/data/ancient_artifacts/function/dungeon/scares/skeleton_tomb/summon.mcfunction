##Wave boss bar
#init
$execute if score @s animation matches 12 run bossbar add skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) {"text":"skeleton Tomb"}
$execute if score @s animation matches 12 run bossbar set skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 10
$execute if score @s animation matches 12 run bossbar set skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) style notched_10
$execute if score @s animation matches 12 run bossbar set skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) color purple
#update values
$execute if score @s animation matches 0..12 run bossbar set skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) value $(animation)
$execute if score @s animation matches 0..10 run bossbar set skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) name [{"text":"Skeleton Tomb ","color":"#EEEEEE"},{"text":"- Wave $(wave)","color":"gold"}]
#remove after all waves cleared
$execute if score @s animation matches 0 run bossbar remove skeleton_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)

##summon skeleton with UUID in tag to find the skeletons spawned by this tomb back
$execute if score @s animation matches 1..10 run summon skeleton ~ ~ ~ {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),buffed]}
$execute if score @s animation matches 1..9 run summon stray ~ ~ ~ {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),buffed]}
$execute if score @s animation matches 1..6 run summon skeleton ~ ~ ~ {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),super_buffed]}
$execute if score @s animation matches 1..3 run summon wither_skeleton ~ ~ ~ {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),buffed]}
#Summon effects
execute if score @s animation matches 1..10 run playsound entity.wither.break_block hostile @a ~ ~ ~ 0.5 0.7
execute if score @s animation matches 1..10 run playsound block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1 0

##Wave Finish
#finish effects
execute if score @s animation matches 0 run playsound block.anvil.land master @a ~ ~ ~ 1 2
execute if score @s animation matches 0 run playsound block.beacon.activate master @a ~ ~ ~ 1 0.7
execute if score @s animation matches 0 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0 20 normal
execute if score @s animation matches 0 run particle happy_villager ~ ~ ~ 0.6 0.6 0.6 0 20 normal
#artifact chest
execute if score @s animation matches 0 align xyz run summon marker ~0.5 ~ ~0.5 {Tags:[artifact_chest_place,obsidian]}
#do not repeat again so kill
execute if score @s animation matches 0 run kill @s

scoreboard players remove @s animation 1