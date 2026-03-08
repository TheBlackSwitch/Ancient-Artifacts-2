# make stack to 16 in bundle
item modify entity @s weapon.mainhand ancient_artifacts:parchment_stackable

# Select the parchment type
execute store result score .1 temp run random value 1..8
execute if score .1 temp matches 1..3 run function ancient_artifacts:ancient_parchment/generate/equal
execute if score .1 temp matches 4..5 run function ancient_artifacts:ancient_parchment/generate/unequal
execute if score .1 temp matches 6..8 run function ancient_artifacts:ancient_parchment/generate/rarity