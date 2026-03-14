execute if score @s animation matches 12:
    summon lightning_bolt ~ ~-4 ~
    playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 0
    particle minecraft:dust{color:[0.2, 0.2, 0.2], scale: 2} ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute if score @s animation matches 0..12:
    data modify storage ancient_artifacts:tomb UUID1 set from entity @s UUID[0]
    data modify storage ancient_artifacts:tomb UUID2 set from entity @s UUID[1]
    data modify storage ancient_artifacts:tomb UUID3 set from entity @s UUID[2]
    data modify storage ancient_artifacts:tomb UUID4 set from entity @s UUID[3]
    execute store result storage ancient_artifacts:tomb animation int 1 run scoreboard players get @s animation

    scoreboard players set #11 temp 11
    execute store result storage ancient_artifacts:tomb wave int 1 run scoreboard players operation #11 temp -= @s animation
    function ~/../check_wave with storage ancient_artifacts:tomb

execute if score @s animation matches 11..17 run scoreboard players remove @s animation 1