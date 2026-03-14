execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 130 as @e[type=#ancient_artifacts:projectile,distance=..5,tag=!slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/slow {speed:"50"}
execute if score @s artifact matches 130 as @e[type=#ancient_artifacts:projectile,distance=5..25,tag=slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/unslow {speed:"2"}

execute if score @s artifact matches 131 as @e[type=#ancient_artifacts:projectile,distance=..10,tag=!slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/slow {speed:"50"}
execute if score @s artifact matches 131 as @e[type=#ancient_artifacts:projectile,distance=10..25,tag=slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/unslow {speed:"2"}

execute if score @s artifact matches 132 as @e[type=#ancient_artifacts:projectile,distance=..15,tag=!slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/slow {speed:"50"}
execute if score @s artifact matches 132 as @e[type=#ancient_artifacts:projectile,distance=15..25,tag=slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/unslow {speed:"2"}

execute if score @s artifact matches 133 as @e[type=#ancient_artifacts:projectile,distance=..15,tag=!slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/slow {speed:"25"}
execute if score @s artifact matches 133 as @e[type=#ancient_artifacts:projectile,distance=15..25,tag=slowed,tag=!smithed.strict] at @s run function ancient_artifacts:artifacts/end/slowing_circlet/unslow {speed:"4"}

scoreboard players set .projectiles temp 0

execute if score @s artifact matches 130 store result score .projectiles temp if entity @e[type=#ancient_artifacts:projectile,distance=..5,tag=!slowed,tag=!smithed.strict]
execute if score @s artifact matches 131 store result score .projectiles temp if entity @e[type=#ancient_artifacts:projectile,distance=..10,tag=!slowed,tag=!smithed.strict]
execute if score @s artifact matches 132..133 store result score .projectiles temp if entity @e[type=#ancient_artifacts:projectile,distance=..25,tag=!slowed,tag=!smithed.strict]

execute if score .projectiles temp matches 30.. run advancement grant @s only ancient_artifacts:artifacts/end/slowing_expert