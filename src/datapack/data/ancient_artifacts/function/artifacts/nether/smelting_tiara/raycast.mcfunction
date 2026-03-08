execute align xyz as @e[type=item,dy=0,tag=!checked_smelt] store result score @s age run data get entity @s Age
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=item,distance=..0.5,scores={age=..1},tag=!checked_smelt] run return run function ancient_artifacts:artifacts/nether/smelting_tiara/check_smelt

execute align xyz as @e[type=item,dy=0,tag=!checked_smelt] run tag @s add checked_smelt
execute if entity @p[distance=..20.5] positioned ^ ^ ^0.1 run function ancient_artifacts:artifacts/nether/smelting_tiara/raycast