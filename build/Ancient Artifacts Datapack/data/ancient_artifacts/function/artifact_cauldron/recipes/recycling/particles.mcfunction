execute if data entity @s {data: {roll: "loot"}} run particle minecraft:cloud ~ ~0.3 ~ 0.2 0 0.2 0 3 force
execute if data entity @s {data: {roll: "common"}} run particle minecraft:dust{color: [0.8d, 0.8d, 0.8d], scale: 2} ~ ~0.3 ~ 0.2 0 0.2 0.1 30 force
execute if data entity @s {data: {roll: "uncommon"}} run particle minecraft:dust{color: [0.5d, 0.5d, 1.0d], scale: 2} ~ ~0.3 ~ 0.2 0 0.2 0.1 30 force
execute if data entity @s {data: {roll: "rare"}} run particle minecraft:dust{color: [0.788d, 0.302d, 0.98d], scale: 2} ~ ~0.3 ~ 0.2 0 0.2 0.1 30 force
execute if data entity @s {data: {roll: "unique"}} run particle minecraft:dust{color: [1.0d, 0.584d, 0.0d], scale: 2} ~ ~0.3 ~ 0.2 0 0.2 0.1 30 force
