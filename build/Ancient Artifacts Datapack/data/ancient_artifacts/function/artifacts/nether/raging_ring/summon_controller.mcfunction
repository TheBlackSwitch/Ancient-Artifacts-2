playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 1
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0 0.5 0 0.1 50
particle minecraft:dust{color: [1.0d, 0.5d, 0.0d], scale: 3} ~ ~0.5 ~ 0 0.5 0 0.1 10
summon polar_bear ~ ~ ~ {Tags: ["rage_controller", "smithed.entity", "smithed.strict"], attributes: [{id: "minecraft:scale", base: 0.01d}], Silent: 1b, active_effects: [{id: "minecraft:invisibility", duration: -1, show_particles: false}], DeathLootTable: "ancient_artifacts:empty", Invulnerable: 1b}
ride @e[tag=rage_controller, limit=1, sort=nearest, predicate=!ancient_artifacts:riding] mount @s
data modify entity @s anger_end_time set value 999999999L
