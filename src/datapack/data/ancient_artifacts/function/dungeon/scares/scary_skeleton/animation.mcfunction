
#-------------------------------------------------------
## Animation start
#-------------------------------------------------------

execute if score @s animation matches 7:
    playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 2
    data modify entity @s item.components."minecraft:item_model" set value "ancient_artifacts:entity/skeleton/active"

#-------------------------------------------------------
## Particles + SFX before spawning
#-------------------------------------------------------

execute if score @s animation matches 1..5 run playsound block.beacon.power_select hostile @a ~ ~ ~ 5 0

execute if score @s animation matches 3..5:
    particle dust{color:[0.8, 0.0, 0.0], scale:2} ~ ~ ~ 0.1 0.5 0.1 0 20 force
    particle minecraft:shriek{delay:0} ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:shriek{delay:10} ~ ~ ~ 0.1 0.1 0.1 0 1

execute if score @s animation matches 1..2 run particle dust{color:[0.8, 0.0, 0.0], scale:2} ~ ~ ~ 0.1 0.5 0.1 0 20 force

#-------------------------------------------------------
## Summon the skeleton + SFX
#-------------------------------------------------------

execute if score @s animation matches 0:
    playsound entity.wither.break_block hostile @a ~ ~ ~ 1 0.7

    kill @s

    # Summon a random skeleton type
    execute store result score #rand temp run random value 1..3
    execute if score #rand temp matches 1 run return run summon skeleton ~ ~ ~ {Tags:[buffed,super_buffed]}
    execute if score #rand temp matches 2 run return run summon wither_skeleton ~ ~ ~ {Tags:[buffed,super_buffed]}
    execute if score #rand temp matches 3 run return run summon stray ~ ~ ~ {Tags:[buffed,super_buffed]}

# advance the animation
scoreboard players remove @s animation 1