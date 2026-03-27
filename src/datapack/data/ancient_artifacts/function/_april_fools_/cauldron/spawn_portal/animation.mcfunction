

execute if score @s animation matches 200:
    playsound minecraft:block.portal.ambient master @a ~ ~ ~ 0.5 1.5
    playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 0.8 0.9

execute if score @s animation matches 180..199:
    particle minecraft:electric_spark ~ ~ ~ 0.35 0.35 0.35 0 5 force

execute if score @s animation matches 170: 
    effect give @a[distance=..7] resistance 2 9 true

execute if score @s animation matches 160:
    playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 0.8 1.2
    playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.4
    execute rotated 0 -90 run function ancient_artifacts:shulker_castle/intro/particles/lazer
    setblock ~ ~ ~ air
    execute align xyz run kill @e[tag=artifact_cauldron,dy=0]
    function ancient_artifacts:_april_fools_/cauldron/spawn_portal/spawn