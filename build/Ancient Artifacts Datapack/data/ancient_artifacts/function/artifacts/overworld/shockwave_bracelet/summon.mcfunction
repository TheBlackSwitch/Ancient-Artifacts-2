scoreboard players set @s shockwave_kills 0
summon item_display ~ ~ ~ {Tags: ["shockwave", "INIT", "S1"]}
summon item_display ~ ~ ~ {Tags: ["shockwave", "INIT", "S2"]}
summon item_display ~ ~ ~ {Tags: ["shockwave", "INIT", "S3"]}
execute rotated as @s run tp @e[type=item_display, tag=shockwave, tag=INIT, tag=S1] ^ ^1 ^1 ~-6 ~-20
execute rotated as @s run tp @e[type=item_display, tag=shockwave, tag=INIT, tag=S2] ^ ^1 ^1 ~ ~-20
execute rotated as @s run tp @e[type=item_display, tag=shockwave, tag=INIT, tag=S3] ^ ^1 ^1 ~6 ~-20
scoreboard players operation @e[tag=shockwave, tag=INIT] tbs.ID = @s tbs.ID
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.6 2
