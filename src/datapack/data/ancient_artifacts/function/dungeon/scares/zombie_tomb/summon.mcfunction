#-------------------------------------------------------
## Handle bossbar
#-------------------------------------------------------

# Init the bossbar
$execute if score @s animation matches 12 run bossbar add zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) {"text":"Zombie Tomb"}
$execute if score @s animation matches 12 run bossbar set zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 10
$execute if score @s animation matches 12 run bossbar set zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) style notched_10
$execute if score @s animation matches 12 run bossbar set zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) color red

# Update the bossbar values
$execute if score @s animation matches 0..12 run bossbar set zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) value $(animation)
$execute if score @s animation matches 0..10 run bossbar set zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) name [{"text":"Zombie Tomb ","color":"dark_green"},{"text":"- Wave $(wave)","color":"gold"}]

# Remove bossbar after completion
$execute if score @s animation matches 0 run bossbar remove zombie_tomb_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)

#-------------------------------------------------------
## Summon a skeleton linked with this tomb
#-------------------------------------------------------

# Link the skeleton through a UUID tag so we can find it later
$execute if score @s animation matches 1..10 run summon zombie ~1 ~ ~ {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),buffed]}
$execute if score @s animation matches 1..9 run summon zombie ~ ~ ~1 {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),super_buffed]}
$execute if score @s animation matches 1..6 run summon zombie ~-1 ~ ~ {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),buffed]}
$execute if score @s animation matches 1..3 run summon zombie ~ ~ ~-1 {Tags:[tomb_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),super_buffed]}

# Summon effects
execute if score @s animation matches 1..10 run playsound entity.wither.break_block hostile @a ~ ~ ~ 0.5 0.7
execute if score @s animation matches 1..10 run playsound block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1 0

#-------------------------------------------------------
## Finish
#-------------------------------------------------------

# Finish effects
execute if score @s animation matches 0 run playsound block.anvil.land master @a ~ ~ ~ 1 2
execute if score @s animation matches 0 run playsound block.beacon.activate master @a ~ ~ ~ 1 0.7
execute if score @s animation matches 0 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0 20 normal
execute if score @s animation matches 0 run particle happy_villager ~ ~ ~ 0.6 0.6 0.6 0 20 normal

# Artifact chest
execute if score @s animation matches 0 align xyz:
    summon marker ~0.5 ~ ~0.5 {Tags:[artifact_chest_place,obsidian]}
    execute as @e[type=marker,tag=artifact_chest_place] at @s run function ancient_artifacts:artifact_chests/place

# Do not repeat again so kill
execute if score @s animation matches 0 run kill @s

scoreboard players remove @s animation 1