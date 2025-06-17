particle flash ~ ~ ~
execute rotated 0 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:50}
execute rotated 90 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:50}
execute rotated 180 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:50}
execute rotated -90 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:50}
playsound minecraft:block.trial_spawner.ominous_activate player @a ~ ~ ~ 2 1.5
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.5

summon item_display ~ ~0.01 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[20f,1f,20f]},interpolation_duration:10,Tags:["pulse","INIT"],item:{id:"minecraft:gunpowder",count:1,components:{"minecraft:item_model":"ancient_artifacts:misc/pulse"}}}
schedule function ancient_artifacts:artifacts/end/pulse_watch/animate_pulse 2t append
schedule function ancient_artifacts:artifacts/end/pulse_watch/pulse_reset 42t replace
function ancient_artifacts:tag_tamed
scoreboard players operation .search tbs.ID = @s tbs.ID
$execute as @e[type=!#ancient_artifacts:no_damage,tag=!no_damage,tag=!tamed,predicate=!theblackswitch:matches_search_id,distance=..$(distance)] run function ancient_artifacts:utilities/damage_entity_by_search {damage:4}
$execute as @e[tag=!tamed,predicate=!theblackswitch:matches_search_id,distance=..$(distance)] at @s run function ancient_artifacts:artifacts/end/pulse_watch/pull_entity
tag @e[type=item_display,tag=pulse] remove INIT
scoreboard players add @s pulses 1