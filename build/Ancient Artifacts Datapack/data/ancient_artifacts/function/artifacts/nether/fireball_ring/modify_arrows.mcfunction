summon item_display ~ ~ ~ {Tags: ["fireball_ring", "INIT", "smithed.entity", "smithed.strict"], billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], scale: [3.0f, 3.0f, 3.0f]}, item: {id: "minecraft:fire_charge", count: 1}}
data merge entity @s {HasVisualFire: 1b, pickup: 0b, Tags: ["fireball_ring", "INIT", "smithed.entity"], PierceLevel: 0b}
scoreboard players operation @e[type=item_display, tag=fireball_ring, tag=INIT, limit=1] tbs.ID = #search tbs.ID
ride @e[type=item_display, tag=fireball_ring, tag=INIT, limit=1] mount @e[type=#minecraft:arrows, tag=fireball_ring, tag=INIT, limit=1]
tag @e[tag=fireball_ring] remove INIT
