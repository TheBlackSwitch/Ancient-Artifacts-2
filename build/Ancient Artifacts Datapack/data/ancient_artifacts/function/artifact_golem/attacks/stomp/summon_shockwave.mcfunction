tag @e[type=item_display, tag=ag_shockwave] remove INIT
scoreboard players add @s shockwave_distance 1
execute unless score @s shockwave_distance matches 121.. run summon item_display ~ ~ ~ {Tags: ["ag_shockwave", "INIT", "smithed.entity", "smithed.strict"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], scale: [1.0f, 1000.0f, 0.2f]}, item: {id: "minecraft:glowstone_dust", count: 1b, components: {"minecraft:item_model": "ancient_artifacts:misc/shockwave"}}, view_range: 2.0f, brightness: {sky: 0, block: 15}, teleport_duration: 6, interpolation_duration: 6}
execute as @e[type=item_display, tag=ag_shockwave, tag=INIT] run tp @s ~ 0 ~ ~ ~
execute unless score @s shockwave_distance matches 121.. rotated ~3 0 run function ancient_artifacts:artifact_golem/attacks/stomp/summon_shockwave
