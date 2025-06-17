execute if entity @a[scores={used_upgrade=1..}] as @e[nbt={Item:{components:{"minecraft:custom_data":{heavy:0b,artifact_upgrade:1b}}}}] on origin run scoreboard players set @s upgrade_type 0
execute if entity @a[scores={used_upgrade=1..}] as @e[nbt={Item:{components:{"minecraft:custom_data":{heavy:1b,artifact_upgrade:1b}}}}] on origin run scoreboard players set @s upgrade_type 1
execute if entity @a[scores={used_upgrade=1..}] as @e[nbt={Item:{components:{"minecraft:custom_data":{artifact_upgrade:1b}}}}] on origin at @s run function ancient_artifacts:artifact_upgrade/activate
execute if entity @a[scores={used_upgrade=1..}] run kill @e[type=ender_pearl,nbt={Item:{components:{"minecraft:custom_data":{artifact_upgrade:1b}}}}]
scoreboard players set @a used_upgrade 0