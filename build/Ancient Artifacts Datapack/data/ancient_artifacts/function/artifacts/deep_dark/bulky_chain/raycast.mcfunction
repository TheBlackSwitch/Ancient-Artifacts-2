execute align xyz as @e[type=item, dy=0, tag=!checked_bulk] store result score @s age run data get entity @s Age
execute align xyz if entity @n[type=item, dy=0, scores={age=..10}, tag=!checked_bulk] run return run function ancient_artifacts:artifacts/deep_dark/bulky_chain/bulk
execute align xyz as @e[type=item, dy=0, tag=!checked_bulk] run tag @s add checked_bulk
execute if entity @p[distance=..20.5] positioned ^ ^ ^0.1 run function ancient_artifacts:artifacts/deep_dark/bulky_chain/raycast
