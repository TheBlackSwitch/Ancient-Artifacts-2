kill @e[type=shulker, tag=shulker_king]
summon shulker -56 59 -996 {Team: "aa.players", PersistenceRequired: 1b, AttachFace: 1b, Color: 4b, Tags: ["shulker_king", "INIT"], Invulnerable: 1b, DeathLootTable: "ancient_artifacts:empty"}
tag @e[type=marker, tag=shulker_castle] remove boss_finished
tag @e[type=marker, tag=shulker_castle] remove boss_started
