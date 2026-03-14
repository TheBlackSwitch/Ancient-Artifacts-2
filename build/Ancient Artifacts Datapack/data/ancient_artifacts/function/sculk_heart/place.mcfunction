execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags: ["sculk_heart", "center"], item: {id: "gunpowder", components: {item_model: "ancient_artifacts:entity/sculk_heart/inactive"}}, brightness: {block: 15, sky: 0}}
execute align xyz positioned ~1.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags: ["sculk_heart"], item: {id: "gunpowder", components: {item_model: "ancient_artifacts:entity/sculk_heart/inactive"}}, brightness: {block: 15, sky: 0}}
execute align xyz positioned ~-0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags: ["sculk_heart"], item: {id: "gunpowder", components: {item_model: "ancient_artifacts:entity/sculk_heart/inactive"}}, brightness: {block: 15, sky: 0}}
execute align xyz positioned ~0.5 ~0.5 ~1.5 run summon item_display ~ ~ ~ {Tags: ["sculk_heart"], item: {id: "gunpowder", components: {item_model: "ancient_artifacts:entity/sculk_heart/inactive"}}, brightness: {block: 15, sky: 0}}
execute align xyz positioned ~0.5 ~0.5 ~-0.5 run summon item_display ~ ~ ~ {Tags: ["sculk_heart"], item: {id: "gunpowder", components: {item_model: "ancient_artifacts:entity/sculk_heart/inactive"}}, brightness: {block: 15, sky: 0}}
setblock ~1 ~ ~ barrier
setblock ~-1 ~ ~ barrier
setblock ~ ~ ~1 barrier
setblock ~ ~ ~-1 barrier
setblock ~ ~ ~ barrier
