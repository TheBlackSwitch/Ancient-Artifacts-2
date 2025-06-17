##Tag All tamed mobs
execute as @e[type=wolf] if data entity @s Owner run tag @s add tamed
execute as @e[type=#ancient_artifacts:tamable,nbt={Tame:1b}] run tag @s add tamed
execute as @e[type=cat] if data entity @s Owner run tag @s add tamed
execute as @e[type=parrot] if data entity @s Owner run tag @s add tamed