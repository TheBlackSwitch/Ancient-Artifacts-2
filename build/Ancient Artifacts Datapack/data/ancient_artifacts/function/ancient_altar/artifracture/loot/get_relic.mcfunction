summon item ~ ~0.5 ~ {Item: {id: "minecraft:poisonous_potato", count: 1}, Tags: ["artifact_to_relic"]}
$data modify entity @e[tag=artifact_to_relic,limit=1] Item.id set from storage ancient_artifacts:relics $(dim).list[$(relic)].relic
tag @e remove artifact_to_relic
