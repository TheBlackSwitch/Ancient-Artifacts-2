execute unless data entity @s {data: {Items: []}} run summon item ~ ~ ~ {Tags: ["drop", "INIT"], Item: {id: "minecraft:poisonous_potato", Count: 1b}}
execute unless data entity @s {data: {Items: []}} run data modify entity @e[tag=drop, tag=INIT, limit=1] Item set from entity @s data.Items[0]
execute unless data entity @s {data: {Items: []}} run tag @e[tag=drop] remove INIT
execute unless data entity @s {data: {Items: []}} run data remove entity @s data.Items[0]
execute unless data entity @s {data: {Items: []}} run function ancient_artifacts:artifact_cauldron/break/drop_items
