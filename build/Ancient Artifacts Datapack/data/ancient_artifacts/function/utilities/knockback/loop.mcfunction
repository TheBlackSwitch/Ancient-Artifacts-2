scoreboard players remove .knockback_loop temp 1
summon armor_stand ~ ~ ~ {equipment: {feet: {id: "minecraft:poisonous_potato", components: {enchantments: {"ancient_artifacts:knockback": 1}}}}, Invisible: 1b}
execute if score .knockback_loop temp matches 1.. run function ancient_artifacts:utilities/knockback/loop
