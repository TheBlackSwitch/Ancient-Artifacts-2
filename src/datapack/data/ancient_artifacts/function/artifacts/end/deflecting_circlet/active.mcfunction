execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

scoreboard players operation #search tbs.ID = @s tbs.ID

execute positioned ~-0.5 ~ ~-0.5 run tag @e[type=#ancient_artifacts:projectile,tag=!smithed.strict,dy=1,dx=0,dz=0] add deflected

execute if score @s artifact matches 140 as @e[type=#ancient_artifacts:projectile,tag=!smithed.strict,distance=0..5,tag=!deflected] run function ancient_artifacts:artifacts/end/deflecting_circlet/deflect {chance:50}
execute if score @s artifact matches 141 as @e[type=#ancient_artifacts:projectile,tag=!smithed.strict,distance=0..5,tag=!deflected] run function ancient_artifacts:artifacts/end/deflecting_circlet/deflect {chance:20}
execute if score @s artifact matches 142 as @e[type=#ancient_artifacts:projectile,tag=!smithed.strict,distance=0..5,tag=!deflected] run function ancient_artifacts:artifacts/end/deflecting_circlet/deflect {chance:0}