##Get the standard structure rotation in a score
$scoreboard players set @s rot $(rot)
execute store result score @s random run random value 0..3

##Store intital rotation in case a hall doesn't use the random one
execute if score @s rot matches 0 run data modify storage ancient_artifacts:rot prev set value none
execute if score @s rot matches 90 run data modify storage ancient_artifacts:rot prev set value clockwise_90
execute if score @s rot matches 180 run data modify storage ancient_artifacts:rot prev set value 180
execute if score @s rot matches -90 run data modify storage ancient_artifacts:rot prev set value counterclockwise_90

##Store data to get pack to the original pos
execute if score @s random matches 0 run data modify storage ancient_artifacts:rot back set value '^ ^ ^'
execute if score @s random matches 1 run data modify storage ancient_artifacts:rot back set value '^-7 ^ ^'
execute if score @s random matches 2 run data modify storage ancient_artifacts:rot back set value '^ ^ ^-7'
execute if score @s random matches 3 run data modify storage ancient_artifacts:rot back set value '^-7 ^ ^-7'

##Add a random rotation and calc it between 180 and -179
execute if score @s random matches 1 run scoreboard players add @s rot 90
execute if score @s random matches 2 run scoreboard players remove @s rot 90
execute if score @s random matches 3 run scoreboard players add @s rot 180

execute if score @s rot matches 181.. run scoreboard players remove @s rot 360
execute if score @s rot matches ..-180 run scoreboard players add @s rot 360

##Convert the rotation numbers into a string that the place command can use
execute if score @s rot matches 0 run data modify storage ancient_artifacts:rot rot set value none
execute if score @s rot matches 90 run data modify storage ancient_artifacts:rot rot set value clockwise_90
execute if score @s rot matches 180 run data modify storage ancient_artifacts:rot rot set value 180
execute if score @s rot matches -90 run data modify storage ancient_artifacts:rot rot set value counterclockwise_90
data modify storage ancient_artifacts:test Rot set from storage ancient_artifacts:rot rot

##Change position according to the rotation
execute unless score @s checked matches 1 if score @s random matches 0 positioned ^ ^ ^ run function ancient_artifacts:dungeon/target/hall/random with storage ancient_artifacts:rot

execute unless score @s checked matches 1 if score @s random matches 1 positioned ^7 ^ ^ run function ancient_artifacts:dungeon/target/hall/random with storage ancient_artifacts:rot

execute unless score @s checked matches 1 if score @s random matches 2 positioned ^ ^ ^7 run function ancient_artifacts:dungeon/target/hall/random with storage ancient_artifacts:rot

execute unless score @s checked matches 1 if score @s random matches 3 positioned ^7 ^ ^7 run function ancient_artifacts:dungeon/target/hall/random with storage ancient_artifacts:rot

