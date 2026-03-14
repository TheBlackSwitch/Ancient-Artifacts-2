# Tag all player allied mobs
execute as @e[tag=!smithed.entity,type=#ancient_artifacts:allies/tamable,tag=!tamed,nbt={Tame:1b}] run tag @s add tamed
execute as @e[tag=!smithed.entity,type=#ancient_artifacts:allies/has_owner,tag=!tamed] if data entity @s Owner run tag @s add tamed
execute as @e[tag=!smithed.entity,type=#ancient_artifacts:allies/ridable_with_equipment,tag=!tamed] if data entity @s equipment run tag @s add tamed
execute as @e[tag=!smithed.entity,type=#ancient_artifacts:allies/trusting_any,tag=!tamed] if data entity @s {Trusting:1b} run tag @s add tamed
execute as @e[tag=!smithed.entity,type=#ancient_artifacts:allies/trusting_specific,tag=!tamed] if data entity @s Trusted[] run tag @s add tamed