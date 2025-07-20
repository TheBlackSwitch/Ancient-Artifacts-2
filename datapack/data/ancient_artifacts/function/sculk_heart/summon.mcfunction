##Wave boss bar
#init
$execute if score @s animation matches 22 run bossbar add sculk_heart_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) {"text":"\uE517","shadow_color":0,"font":"ancient_artifacts:main"}
$execute if score @s animation matches 22 run bossbar set sculk_heart_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 20
$execute if score @s animation matches 22 run bossbar set sculk_heart_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) color blue
$execute if score @s animation matches 22 run bossbar add sculk_heart_space_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) {"text":"","shadow_color":0}
#update values
$execute if score @s animation matches 0..22 run bossbar set sculk_heart_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) value $(animation)

#remove after all waves cleared
$execute if score @s animation matches 0 run bossbar remove sculk_heart_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)
$execute if score @s animation matches 0 run bossbar remove sculk_heart_space_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)

##summon zombie with UUID in tag to find the zombies spawned by this wave back
execute if score @s animation matches 1..20 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 if score @s animation matches ..16 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 if score @s animation matches ..12 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 if score @s animation matches ..10 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 if score @s animation matches ..6 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 if score @s animation matches ..4 run function ancient_artifacts:sculk_heart/select_mob
execute if score @s animation matches 1..20 if score @s animation matches ..2 run function ancient_artifacts:sculk_heart/select_mob

#Summon effects
execute if score @s animation matches 1..20 run playsound entity.wither.break_block hostile @a ~ ~ ~ 0.3 0.7
execute if score @s animation matches 1..20 run playsound block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 0.7 0
particle dust{color:[1.0,1.0,1.0],scale:4} ~ ~ ~ 1 1 1 0.1 30

##Wave Finish
#do not repeat again so switch state
execute if score @s animation matches 0 run scoreboard players set @s heart_state 3
execute if score @s animation matches 0 run scoreboard players set @s animation 101

scoreboard players remove @s animation 1