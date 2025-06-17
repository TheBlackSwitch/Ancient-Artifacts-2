execute unless entity @e[type=marker,tag=healer_tp_location,tag=!occupied,limit=1,sort=random] run return fail

summon shulker ~ ~ ~ { \
    AttachFace:0b,Color:14b,Tags:["healing_shulker","INIT"],active_effects:[ \
        {id:"minecraft:regeneration",amplifier:0,duration:-1} \
    ],attributes:[ \
        {id:"minecraft:max_health",base:8}, \
        {id:"minecraft:scale",base:1.5} \
    ] \
}

execute as @e[type=shulker,tag=healing_shulker,tag=INIT] at @s run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/teleport