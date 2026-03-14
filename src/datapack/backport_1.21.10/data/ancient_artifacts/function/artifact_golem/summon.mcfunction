scoreboard players operation #search golemID = .current golemID
scoreboard players add .current golemID 1

summon marker ~ ~ ~ {Tags:[artifact_golem, spawn_pos, INIT, smithed.entity, smithed.strict]}
summon zombified_piglin ~ ~-3 ~ {
    NoAI:1b, NoGravity:1b, Invulnerable:1b, Silent:1b, DeathLootTable:"ancient_artifacts:empty", PersistenceRequired:1b, 
    Tags:[artifact_golem, center, silent, no_glow, INIT, smithed.entity, smithed.strict], 
    active_effects:[
        {id:"minecraft:instant_damage",amplifier:1b,duration:-1,show_particles:0b,show_icon:0b},
        {id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b,show_icon:0b},
        {id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b,show_icon:0b},
        {id:"minecraft:weakness",amplifier:10b,duration:-1,show_particles:0b,show_icon:0b},
        {id:"minecraft:slowness",amplifier:0b,duration:300,show_particles:0b,show_icon:0b}
    ],
    Attributes:[
        {Name:"max_health",Base:400},
        {Name:"knockback_resistance",Base:0.9},
        {Name:"attack_damage",Base:0},
        {Name:"attack_knockback",Base:-2},
        {Name:"movement_speed",Base:0.3}
    ],
    AngerTime:999999999L,
    Passengers:[
        {
            id:"minecraft:item_display", teleport_duration:1, Tags:[artifact_golem, body, INIT, smithed.entity, smithed.strict], item:{
                id:"minecraft:glowstone_dust",
                count:1b,
                components:{"minecraft:item_model":"ancient_artifacts:entity/artifact_golem/body"}
            },
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[0f,-0.65,0f],
                scale:[1f,1f,1f]
            },
            interpolation_duration: 2
        },
        {
            id:"minecraft:item_display", Silent:1b, teleport_duration:1, Tags:[artifact_golem, head, INIT, smithed.entity, smithed.strict], item:{
                id:"minecraft:glowstone_dust",
                count:1b,
                components:{"minecraft:item_model":"ancient_artifacts:entity/artifact_golem/head"}
            },
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[0f,0.35f,0f],
                scale:[1f,1f,1f]
            },
            interpolation_duration: 2
        },
        {
            id:"minecraft:item_display", Silent:1b, teleport_duration:1, Tags:[artifact_golem, leg_l, INIT, smithed.entity, smithed.strict], item:{
                id:"minecraft:glowstone_dust",
                count:1b,
                components:{"minecraft:item_model":"ancient_artifacts:entity/artifact_golem/leg_l"}
            },
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[0.36f,-1f,-0.4f],
                scale:[1f,1f,1f]
            },
            interpolation_duration: 2
        },
        {
            id:"minecraft:item_display", Silent:1b, teleport_duration:1, Tags:[artifact_golem, leg_r, INIT, smithed.entity, smithed.strict], item:{
                id:"minecraft:glowstone_dust",
                count:1b,
                components:{"minecraft:item_model":"ancient_artifacts:entity/artifact_golem/leg_r"}
            },
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[-0.36f,-1f,-0.4f],
                scale:[1f,1f,1f]
            },
            interpolation_duration: 2
        },
        {
            id:"minecraft:item_display", Silent:1b, teleport_duration:1, Tags:[artifact_golem, arm_l, INIT, smithed.entity, smithed.strict], item:{
                id:"minecraft:glowstone_dust",
                count:1b,
                components:{"minecraft:item_model":"ancient_artifacts:entity/artifact_golem/arm_l"}
            },
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[0.75f,-0.3f,0f],
                scale:[1f,1f,1f]
            },
            interpolation_duration: 2
        },
        {
            id:"minecraft:item_display", Silent:1b, teleport_duration:1, Tags:[artifact_golem, arm_r, INIT, smithed.entity, smithed.strict], item:{
                id:"minecraft:glowstone_dust",
                count:1b,
                components:{"minecraft:item_model":"ancient_artifacts:entity/artifact_golem/arm_r"}
            },
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[-0.75f,-0.3f,0f],
                scale:[1f,1f,1f]
            },
            interpolation_duration: 2
        },
        {
            id:"minecraft:interaction",
            Tags:[artifact_golem, hitbox_carrier, INIT, smithed.entity, smithed.strict],
            transformation:{
                left_rotation:[0f,0f,0f,1f],
                right_rotation:[0f,0f,0f,1f],
                translation:[0f,3f,0f],
                scale:[1f,1f,1f]
            },
            Passengers: [
                {id:"minecraft:interaction",width:2f,height:2.7f,Tags:[artifact_golem, hitbox, INIT, smithed.entity, smithed.strict]}
            ],
            height:-2f,
            width:0f
        }
    ]
}

scoreboard players operation @e[tag=artifact_golem,tag=INIT,distance=..20] golemID = #search golemID
tag @e[tag=artifact_golem,tag=INIT,distance=..20] remove INIT
