scoreboard players set @s attack_type -1
execute if entity @a[distance=..15, predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 1
execute if entity @a[distance=..30, predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 2
execute if entity @a[distance=..45, predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 3
execute if entity @a[distance=..60, predicate=ancient_artifacts:survival] run return run scoreboard players set @s attack_type 4
