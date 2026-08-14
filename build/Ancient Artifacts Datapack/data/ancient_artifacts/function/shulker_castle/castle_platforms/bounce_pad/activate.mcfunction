playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 0.8 1
playsound minecraft:entity.shulker.hurt_closed master @a ~ ~ ~ 1 1
scoreboard players set @s animation 20
data merge entity @s {transformation: {translation: [0.0d, 0.5d, 0.0d], left_rotation: [0.0d, 0.0d, 0.0d, 1.0d], right_rotation: [0.0d, 0.0d, 0.0d, 1.0d], scale: [1.0d, 1.0d, 1.0d]}, start_interpolation: 0, interpolation_duration: 1}
execute positioned ~-0.25 ~ ~-0.25 run tag @a[distance=..3] add launch_pad_launched
execute as @p[predicate=!theblackswitch:v2.0/patch-4/movement_check/sneak] at @s run function ancient_artifacts:shulker_castle/castle_platforms/bounce_pad/windcharge_launch
