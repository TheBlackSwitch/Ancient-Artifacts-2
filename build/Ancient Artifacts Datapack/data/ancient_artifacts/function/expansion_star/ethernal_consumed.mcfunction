advancement revoke @s only ancient_artifacts:trigger/ethernal_expansion_star_consumed
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.2
playsound minecraft:entity.wither.death player @a ~ ~ ~ 0.2
effect clear @s luck
tag @s add ethernal_expanded
