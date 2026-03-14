function ancient_artifacts:artifact_cauldron/recipes/particle/generic_item
particle happy_villager ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0 20 force
particle dust{color: [0.6d, 0.0d, 1.0d], scale: 1} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0 10 force
playsound entity.player.levelup block @a ~0.5 ~0.5 ~0.5 1 1.5
tag @s add recipe_succes
