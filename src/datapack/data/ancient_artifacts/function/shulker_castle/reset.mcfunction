kill @e[type=shulker,tag=shulker_king]
execute at @n[tag=shulker_castle] run summon shulker ~ ~ ~ {Team:"aa.players",PersistenceRequired:1b,AttachFace:1b,Color:4b, \
    Tags:["shulker_king","INIT"],Invulnerable:1b,DeathLootTable:"ancient_artifacts:empty"}

tag @n[type=marker,tag=shulker_castle] remove shulker_king_music_start

#execute as @e[type=shulker,tag=shulker_king,tag=INIT] run scoreboard players set @s animation 200

tag @e[type=marker,tag=shulker_castle] remove boss_finished
tag @e[type=marker,tag=shulker_castle] remove boss_started
