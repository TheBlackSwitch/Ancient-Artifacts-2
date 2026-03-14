scoreboard objectives add pot trigger
scoreboard players enable @a pot
execute as @a[scores={pot=1..}, gamemode=!creative] run scoreboard players set @s pot 0
execute as @a[scores={pot=1..}] at @s run setblock ~ ~ ~ decorated_pot[cracked=true]{LootTable: "ancient_artifacts:pot/overworld"}
execute as @a[scores={pot=1..}] at @s run function ancient_artifacts:pots/random_sherd {storage: "sherds", path: "sherd1"}
execute as @a[scores={pot=1..}] at @s run function ancient_artifacts:pots/random_sherd {storage: "sherds", path: "sherd2"}
execute as @a[scores={pot=1..}] at @s run function ancient_artifacts:pots/random_sherd {storage: "sherds", path: "sherd3"}
execute as @a[scores={pot=1..}] at @s run function ancient_artifacts:pots/random_sherd {storage: "sherds", path: "sherd4"}
execute as @a[scores={pot=1..}] at @s run function ancient_artifacts:pots/apply_sherds with storage ancient_artifacts:sherds
scoreboard players set @a pot 0
