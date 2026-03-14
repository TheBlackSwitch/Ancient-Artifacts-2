$execute positioned ~$(X) ~$(Y) ~$(Z) run summon marker ~ ~ ~ {Tags:[summon_loc,particles]}

$execute positioned ~$(X) ~$(Y) ~$(Z) run summon $(type) ~ ~-2 ~ { \
    Tags:[ \
        "buffed", \
        "buffed_weak", \
        "please_no_modify_death_loot_table_please_i_need_this", \
        "sculk_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)", \
        "sculk_spawn_anim" \
    ], \
    equipment:{ \
        head:{ \
            id:"gunpowder", \
            components:{"minecraft:item_model":"ancient_artifacts:entity/sculk_mob"} \
        } \
    }, \
    drop_chances:{head:0,chest:0,legs:0,feet:0,offhand:0,mainhand:0}, \
    PersistenceRequired:1b, \
    DeathLootTable:"ancient_artifacts:equipment/drops/sculked_mob" \
}

$scoreboard players set @e[tag=sculk_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] tbs.ID -1