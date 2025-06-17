#lifetime
scoreboard players operation .search tbs.ID = @s tbs.ID
execute if score @a[predicate=theblackswitch:matches_search_id,limit=1] shockwave_kills matches 10.. run advancement grant @a[predicate=theblackswitch:matches_search_id] only ancient_artifacts:artifacts/overworld/shockwave_bracelet
execute if score @s lifetime matches 13 run kill @s
scoreboard players add @s lifetime 1
#damage
function ancient_artifacts:tag_tamed
execute store result score .before temp if entity @e[tag=!tamed,type=!#ancient_artifacts:no_damage,tag=!no_damage,distance=..1.5,predicate=!theblackswitch:matches_search_id]
execute if score .3 slow_tick matches 3 as @e[tag=!tamed,type=!#ancient_artifacts:no_damage,tag=!no_damage,distance=..1.5,predicate=!theblackswitch:matches_search_id] run function ancient_artifacts:utilities/damage_entity_by_search {damage:3}
execute store result score .after temp if entity @e[tag=!tamed,type=!#ancient_artifacts:no_damage,tag=!no_damage,distance=..1.5,predicate=!theblackswitch:matches_search_id]
scoreboard players operation .before temp -= .after temp
scoreboard players operation @a[predicate=theblackswitch:matches_search_id,limit=1] shockwave_kills += .before temp

#particles
particle minecraft:sweep_attack ~ ~ ~ 0.2 0 0.2 0 2 force
particle minecraft:dust{color:[0.549,0.584,0.992],scale:1} ^-0.3 ^ ^ 0.1 0 0.1 0 50 force
particle minecraft:dust{color:[0.831,0.843,1.0],scale:1} ~ ~ ~ 0.1 0 0.1 0 50 force
particle minecraft:dust{color:[0.6,0.584,1.0],scale:1} ^0.3 ^ ^ 0.1 0 0.1 0 50 force
#sounds
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.2 0.7
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.3 1.4
#movement
tp @s ^ ^ ^0.8