execute if block ~ ~ ~ #cauldrons align xyz if entity @e[tag=artifact_cauldron, tag=control, dx=1, dy=1, dz=1] run function ancient_artifacts:artifact_cauldron/interact/interact
execute unless block ~ ~ ~ #cauldrons if entity @a[distance=..6] positioned ^ ^ ^0.1 run function ancient_artifacts:artifact_cauldron/interact/raycast
