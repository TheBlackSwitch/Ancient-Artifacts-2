summon bogged ~ ~-2 ~ {Tags:["necromanced","entity","INIT","tamed",smithed.entity],DeathLootTable:"ancient_artifacts:empty",equipment:{head:{id:"minecraft:gunpowder",count:1,components:{"minecraft:item_model":"ancient_artifacts:entity/sculk_mob"}},mainhand:{id:"bow",components:{unbreakable:{}}}},drop_chances:{head:0,mainhand:0}, \
    active_effects:[ \
        {id:"minecraft:slowness",amplifier:6,duration:2,show_particles:0b} \
    ], \
    Passengers:[{id:"minecraft:wolf",Tags:["necromanced","controller",INIT],active_effects:[ \
        {id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}, \
        {id:"minecraft:instant_health",amplifier:0,duration:-1,show_particles:0b}],attributes:[ \
        {id:"scale",base:0.001}, \
        {id:"attack_damage",base:0}, \
        {id:"max_health",base:10000}, \
        {id:"movement_speed",base:0.3} \
    ],Silent:1b,DeathLootTable:"ancient_artifacts:empty",CustomName:{"text":"Necromanced"}}]}
summon marker ~ ~ ~ {Tags:[necromanced,particles,INIT,smithed.entity,smithed.strict]}

scoreboard players operation @n[type=bogged,tag=necromanced,tag=entity,tag=INIT,distance=..3] tbs.ID = @s tbs.ID
scoreboard players operation @n[type=wolf,tag=necromanced,tag=controller,tag=INIT,distance=..3] tbs.ID = @s tbs.ID
scoreboard players operation @n[type=marker,tag=necromanced,tag=particles,tag=INIT,distance=..3] tbs.ID = @s tbs.ID
data modify entity @n[type=wolf,tag=necromanced,tag=controller,tag=INIT,distance=..3] Owner set from entity @s UUID

tag @e[type=bogged,tag=necromanced,tag=entity,tag=INIT,distance=..3] remove INIT
tag @e[type=marker,tag=necromanced,tag=particles,tag=INIT,distance=..3] remove INIT
tag @e[type=wolf,tag=necromanced,tag=controller,tag=INIT,distance=..3] remove INIT