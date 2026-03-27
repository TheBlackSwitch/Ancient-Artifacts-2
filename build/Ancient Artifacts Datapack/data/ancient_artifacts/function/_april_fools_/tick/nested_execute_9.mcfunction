execute unless entity @s[tag=lush_cave_here] if biome ~ ~ ~ minecraft:lush_caves run function ancient_artifacts:_april_fools_/tick/nested_execute_0
execute if entity @s[tag=lush_cave_here] unless biome ~ ~ ~ minecraft:lush_caves run tag @s remove lush_cave_here
execute unless entity @s[tag=chicken_jokey] if entity @e[predicate=ancient_artifacts:is_chicken_jokey, distance=..7] run function ancient_artifacts:_april_fools_/tick/nested_execute_1
execute if entity @s[tag=chicken_jokey] unless entity @e[predicate=ancient_artifacts:is_chicken_jokey, distance=..7] run tag @s remove chicken_jokey
execute unless entity @s[tag=flint_and_steel] if items entity @s weapon.mainhand minecraft:flint_and_steel run function ancient_artifacts:_april_fools_/tick/nested_execute_2
execute if entity @s[tag=flint_and_steel] unless items entity @s weapon.mainhand minecraft:flint_and_steel run tag @s remove flint_and_steel
execute unless entity @s[tag=the_nether] if dimension minecraft:the_nether run function ancient_artifacts:_april_fools_/tick/nested_execute_3
execute if entity @s[tag=the_nether] unless dimension minecraft:the_nether run tag @s remove the_nether
execute unless entity @s[tag=this_is_a_craftingtable] if items entity @s weapon.mainhand minecraft:crafting_table run function ancient_artifacts:_april_fools_/tick/nested_execute_4
execute if entity @s[tag=this_is_a_craftingtable] unless items entity @s weapon.mainhand minecraft:crafting_table run tag @s remove this_is_a_craftingtable
execute if items entity @s weapon.mainhand #minecraft:swords run function ancient_artifacts:_april_fools_/tick/nested_execute_5
execute unless entity @s[tag=zombie] if entity @e[distance=..7, type=minecraft:zombie] run function ancient_artifacts:_april_fools_/tick/nested_execute_6
execute if entity @s[tag=zombie] unless entity @e[distance=..7, type=minecraft:zombie] run tag @s remove zombie
execute unless entity @s[tag=creeper] if entity @e[type=creeper, distance=..5] run function ancient_artifacts:_april_fools_/tick/nested_execute_7
execute if entity @s[tag=creeper] unless entity @e[type=creeper, distance=..5] run tag @s remove creeper
execute unless entity @s[tag=manual] if items entity @s weapon.mainhand *[minecraft:custom_data~{manual: 1b}] run function ancient_artifacts:_april_fools_/tick/nested_execute_8
execute if entity @s[tag=manual] unless items entity @s weapon.mainhand *[minecraft:custom_data~{manual: 1b}] run tag @s remove manual
