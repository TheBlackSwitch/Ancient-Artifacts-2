execute at @s[tag=!exact] unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s[tag=!exact] unless block ~ ~ ~ air run tp @s ~ ~-2 ~
execute if entity @s[tag=!exact] unless block ~ ~ ~ air run return fail
execute at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags: ["artifact_chest", "INIT"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], scale: [1.001f, 1.001f, 1.001f]}, interpolation_duration: 4}
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 facing entity @p feet rotated ~ 0 run tp @e[tag=artifact_chest, tag=INIT] ~ ~ ~ ~ ~
execute at @s align xyz as @e[tag=artifact_chest, tag=INIT, y_rotation=-180..-135] at @s run tp @s ~ ~ ~ 180 0
execute at @s align xyz as @e[tag=artifact_chest, tag=INIT, y_rotation=135..180] at @s run tp @s ~ ~ ~ 180 0
execute at @s align xyz as @e[tag=artifact_chest, tag=INIT, y_rotation=45..135] at @s run tp @s ~ ~ ~ 90 0
execute at @s align xyz as @e[tag=artifact_chest, tag=INIT, y_rotation=-45..45] at @s run tp @s ~ ~ ~ 0 0
execute at @s align xyz as @e[tag=artifact_chest, tag=INIT, y_rotation=-135..-45] at @s run tp @s ~ ~ ~ -90 0
execute at @s align xyz if entity @s[tag=overworld] run summon interaction ~0.5 ~-0.005 ~0.5 {width: 1.01f, height: 1.01f, Tags: ["artifact_chest", "overworld", "smithed.entity", "smithed.strict"], response: 1b}
execute at @s align xyz if entity @s[tag=overworld] run data merge entity @e[tag=artifact_chest, tag=INIT, limit=1, sort=nearest] {item: {id: "minecraft:iron_nugget", count: 1, components: {"minecraft:item_model": "ancient_artifacts:block/artifact_chest/overworld"}}, Tags: ["overworld", "artifact_chest", "smithed.entity", "smithed.strict", "smithed.block"]}
execute at @s align xyz if entity @s[tag=nether] run summon interaction ~0.5 ~-0.005 ~0.5 {width: 1.01f, height: 1.01f, Tags: ["artifact_chest", "nether", "smithed.entity", "smithed.strict"], response: 1b}
execute at @s align xyz if entity @s[tag=nether] run data merge entity @e[tag=artifact_chest, tag=INIT, limit=1, sort=nearest] {item: {id: "minecraft:iron_nugget", count: 1, components: {"minecraft:item_model": "ancient_artifacts:block/artifact_chest/nether"}}, Tags: ["nether", "artifact_chest", "smithed.entity", "smithed.strict", "smithed.block"]}
execute at @s align xyz if entity @s[tag=deep_dark] run summon interaction ~0.5 ~-0.005 ~0.5 {width: 1.01f, height: 1.01f, Tags: ["artifact_chest", "deep_dark", "smithed.entity", "smithed.strict"], response: 1b}
execute at @s align xyz if entity @s[tag=deep_dark] run data merge entity @e[tag=artifact_chest, tag=INIT, limit=1, sort=nearest] {item: {id: "minecraft:iron_nugget", count: 1, components: {"minecraft:item_model": "ancient_artifacts:block/artifact_chest/deep_dark"}}, Tags: ["deep_dark", "artifact_chest", "smithed.entity", "smithed.strict", "smithed.block"]}
execute at @s align xyz if entity @s[tag=obsidian] run summon interaction ~0.5 ~-0.005 ~0.5 {width: 1.01f, height: 1.01f, Tags: ["artifact_chest", "obsidian", "smithed.entity", "smithed.strict"], response: 1b}
execute at @s align xyz if entity @s[tag=obsidian] run data merge entity @e[tag=artifact_chest, tag=INIT, limit=1, sort=nearest] {item: {id: "minecraft:iron_nugget", count: 1, components: {"minecraft:item_model": "ancient_artifacts:block/artifact_chest/obsidian"}}, Tags: ["obsidian", "artifact_chest", "smithed.entity", "smithed.strict", "smithed.block"]}
execute at @s align xyz if entity @s[tag=end] run summon interaction ~0.5 ~-0.005 ~0.5 {width: 1.01f, height: 1.01f, Tags: ["artifact_chest", "end", "smithed.entity", "smithed.strict"], response: 1b}
execute at @s align xyz if entity @s[tag=end] run data merge entity @e[tag=artifact_chest, tag=INIT, limit=1, sort=nearest] {item: {id: "minecraft:iron_nugget", count: 1, components: {"minecraft:item_model": "ancient_artifacts:block/artifact_chest/end"}}, Tags: ["artifact_chest", "end", "smithed.entity", "smithed.strict", "smithed.block"]}
execute at @s run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.8
execute at @s align xyz run setblock ~ ~ ~ barrier
tag @e[tag=artifact_chest] remove INIT
kill @s
