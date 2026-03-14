playsound entity.wither.break_block hostile @a ~ ~ ~ 1 0.7
kill @s
execute store result score #rand temp run random value 1..3
execute if score #rand temp matches 1 run return run summon skeleton ~ ~ ~ {Tags: ["buffed", "super_buffed"]}
execute if score #rand temp matches 2 run return run summon wither_skeleton ~ ~ ~ {Tags: ["buffed", "super_buffed"]}
execute if score #rand temp matches 3 run return run summon stray ~ ~ ~ {Tags: ["buffed", "super_buffed"]}
