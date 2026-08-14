scoreboard players operation #search tbs.ID = @s tbs.ID
execute if score @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search, limit=1] shockwave_kills matches 10.. run advancement grant @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search] only ancient_artifacts:artifacts/overworld/shockwave_bracelet
execute if score @s lifetime matches 13 run kill @s
scoreboard players add @s lifetime 1
function ancient_artifacts:tag_tamed
execute store result score .before temp if entity @e[tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, distance=..1.5, predicate=!theblackswitch:v2.0/patch-4/player_id/match_search]
execute if score #3 tbs.slow_tick matches 3 as @e[tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, distance=..1.5, predicate=!theblackswitch:v2.0/patch-4/player_id/match_search] run function ancient_artifacts:utilities/damage_entity_by_search {damage: 3}
execute store result score .after temp if entity @e[tag=!tamed, type=!#ancient_artifacts:no_damage, tag=!smithed.strict, distance=..1.5, predicate=!theblackswitch:v2.0/patch-4/player_id/match_search]
scoreboard players operation .before temp -= .after temp
scoreboard players operation @a[predicate=theblackswitch:v2.0/patch-4/player_id/match_search, limit=1] shockwave_kills += .before temp
particle minecraft:sweep_attack ~ ~ ~ 0.2 0 0.2 0 2 force
particle minecraft:dust{color: [0.549d, 0.584d, 0.992d], scale: 1} ^-0.3 ^ ^ 0.1 0 0.1 0 50 force
particle minecraft:dust{color: [0.831d, 0.843d, 1.0d], scale: 1} ~ ~ ~ 0.1 0 0.1 0 50 force
particle minecraft:dust{color: [0.6d, 0.584d, 1.0d], scale: 1} ^0.3 ^ ^ 0.1 0 0.1 0 50 force
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.2 0.7
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.3 1.4
tp @s ^ ^ ^0.8
