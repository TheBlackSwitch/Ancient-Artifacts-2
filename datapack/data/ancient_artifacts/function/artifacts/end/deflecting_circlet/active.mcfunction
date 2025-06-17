execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

scoreboard players operation .search tbs.ID = @s tbs.ID

execute if score @s artifact matches 140 as @e[type=#ancient_artifacts:projectile,distance=..5,tag=!deflected] run function ancient_artifacts:artifacts/end/deflecting_circlet/deflect {chance:50}
execute if score @s artifact matches 141 as @e[type=#ancient_artifacts:projectile,distance=..5,tag=!deflected] run function ancient_artifacts:artifacts/end/deflecting_circlet/deflect {chance:20}
execute if score @s artifact matches 142 as @e[type=#ancient_artifacts:projectile,distance=..5,tag=!deflected] run function ancient_artifacts:artifacts/end/deflecting_circlet/deflect {chance:0}