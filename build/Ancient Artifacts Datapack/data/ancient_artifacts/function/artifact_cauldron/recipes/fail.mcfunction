execute if score @s animation matches 40..80 run particle large_smoke ~0.5 ~0.5 ~0.5 0.15 0 0.15 0 1 force
execute if score @s animation matches 77 run playsound entity.wither.shoot block @a ~0.5 ~0.5 ~0.5 0.3 1
execute if score @s animation matches 80 run summon block_display ~0.625 ~0.7 ~0.625 {brightness: {sky: 15, block: 15}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, 0.0f, -0.5f], scale: [0.75f, 0.75f, 0.75f]}, block_state: {Name: "minecraft:fire"}, Tags: ["fire", "artifact_cauldron"]}
execute if score @s animation matches 80 run playsound item.firecharge.use block @a ~0.5 ~0.5 ~0.5 2 0
execute if score @s animation matches 80 run playsound minecraft:entity.breeze.shoot block @a ~0.5 ~0.5 ~0.5 1 0
execute if score @s animation matches 80 run playsound block.fire.ambient block @a ~0.5 ~0.5 ~0.5 1 1
execute if score @s animation matches 80 run playsound block.fire.ambient block @a ~0.5 ~0.5 ~0.5 1 1
execute if score @s animation matches 80 run playsound block.fire.ambient block @a ~0.5 ~0.5 ~0.5 1 1
execute if score @s animation matches 40 run particle flash{color: [1.0d, 1.0d, 1.0d, 1.0d]} ~ ~ ~ 0 0 0 0 1 force @s
execute if score @s animation matches 40 run particle minecraft:lava ~0.5 ~1 ~0.5 0 0 0 0.1 40 force
execute if score @s animation matches 40 run particle minecraft:firework ~0.5 ~1 ~0.5 0 0 0 0.1 100 force
execute if score @s animation matches 40 run playsound entity.firework_rocket.blast block @a
execute if score @s animation matches 40 run playsound entity.firework_rocket.twinkle block @a
execute if score @s animation matches 30 run particle flash{color: [1.0d, 1.0d, 1.0d, 1.0d]} ~ ~ ~ 0 0 0 0 1 force @s
execute if score @s animation matches 30 run particle minecraft:lava ~0.5 ~1 ~0.5 0 0 0 0.1 40 force
execute if score @s animation matches 30 run particle minecraft:firework ~0.5 ~1 ~0.5 0 0 0 0.1 100 force
execute if score @s animation matches 30 run playsound entity.firework_rocket.blast block @a
execute if score @s animation matches 30 run playsound entity.firework_rocket.twinkle block @a
execute if score @s animation matches 13 run particle flash{color: [1.0d, 1.0d, 1.0d, 1.0d]} ~ ~ ~ 0 0 0 0 1 force @s
execute if score @s animation matches 12..15 run particle minecraft:lava ~0.5 ~1.5 ~0.5 0.3 0 0.3 0.1 10 force
execute if score @s animation matches 13 run particle gust ~0.5 ~0.5 ~0.5 0 0 0 0.1 10 force
execute if score @s animation matches 13 run particle minecraft:campfire_cosy_smoke ~0.5 ~1.5 ~0.5 0.2 1 0.2 0.01 50 force
execute if score @s animation matches 13 run playsound minecraft:entity.warden.sonic_boom block @a ~0.5 ~0.5 ~0.5 1 1
execute if score @s animation matches 13 run playsound minecraft:entity.breeze.wind_burst block @a ~0.5 ~0.5 ~0.5 1 1
execute if score @s animation matches 1..17 run particle minecraft:large_smoke ~0.5 ~1.5 ~0.5 0.15 1 0.15 0 20 force
execute if score #3 tbs.slow_tick = #3 tbs.random_delay if score @s animation matches 1..10 run loot spawn ~0.5 ~0.5 ~0.5 loot ancient_artifacts:cauldron/fail
execute if score #3 tbs.slow_tick = #3 tbs.random_delay if score @s animation matches 1..10 as @e[type=item, distance=..1] run data modify entity @s Motion[1] set value 0.3d
execute if score #3 tbs.slow_tick = #3 tbs.random_delay if score @s animation matches 1..10 as @e[type=item, distance=..1] run tag @s add smoking
execute if score @s animation matches 1 run kill @e[tag=fire, limit=1, sort=nearest]
execute if score @s animation matches 1 run scoreboard players set @s current_recipe 0
execute if score @s animation matches 1 run tag @s remove failing
execute if score @s animation matches 1 run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] R -1
execute if score @s animation matches 1 run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] G -1
execute if score @s animation matches 1 run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] B -1
execute if score @s animation matches 1 run scoreboard players set @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] level 0
