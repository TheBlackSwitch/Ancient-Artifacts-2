playsound minecraft:block.trial_spawner.spawn_item_begin player @a ~ ~ ~ 3 0.7
playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 0.1
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.1 2
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0.6
particle minecraft:firework ^ ^1.5 ^0.2 0.1 0.1 0.1 0.2 10 force
particle minecraft:dust{color: [0.9f, 0.2f, 0.9f], scale: 2} ^ ^1.5 ^0.2 0.2 0.2 0.2 0 10 force
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "overworld"}] run function ancient_artifacts:mystery_box/overworld
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "nether"}] run function ancient_artifacts:mystery_box/nether
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "end"}] run function ancient_artifacts:mystery_box/end
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "deep_dark"}] run function ancient_artifacts:mystery_box/deep_dark
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{type: "explorers_boots"}] run function ancient_artifacts:mystery_box/exploration_box
item modify entity @s weapon.mainhand {function: "set_count", add: true, count: -1}
