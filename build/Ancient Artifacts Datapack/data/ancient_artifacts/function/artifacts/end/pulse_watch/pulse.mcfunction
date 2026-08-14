particle flash{color: [1.0d, 1.0d, 1.0d, 1.0d]} ~ ~ ~ 0 0 0 0 1 force @s
execute rotated 0 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 50}
execute rotated 90 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 50}
execute rotated 180 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 50}
execute rotated -90 0 run function ancient_artifacts:ancient_altar/lightning_particle {length: 50}
playsound minecraft:block.trial_spawner.ominous_activate player @a ~ ~ ~ 2 1.5
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.5
summon item_display ~ ~0.01 ~ {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], scale: [20.0f, 1.0f, 20.0f]}, interpolation_duration: 10, Tags: ["pulse", "INIT", "smithed.entity", "smithed.strict"], item: {id: "minecraft:gunpowder", count: 1, components: {"minecraft:item_model": "ancient_artifacts:misc/pulse"}}}
schedule function ancient_artifacts:artifacts/end/pulse_watch/animate_pulse 2 append
schedule function ancient_artifacts:artifacts/end/pulse_watch/pulse_reset 42 replace
function ancient_artifacts:tag_tamed
scoreboard players operation #search tbs.ID = @s tbs.ID
$execute as @e[type=!#ancient_artifacts:no_damage,tag=!tamed,predicate=!theblackswitch:v2.0/patch-4/player_id/match_search,distance=..$(distance),tag=!smithed.strict] run function ancient_artifacts:utilities/damage_entity_by_search {damage:4}
$execute as @e[tag=!tamed,predicate=!theblackswitch:v2.0/patch-4/player_id/match_search,distance=..$(distance),tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/pulse_watch/pull_entity
tag @e[type=item_display, tag=pulse] remove INIT
scoreboard players add @s pulses 1
