scoreboard players remove @s dash_power 1

execute unless block ^ ^ ^3 #ancient_artifacts:spawn_air run return run scoreboard players set @s dash_power 0
execute unless block ^ ^ ^2 #ancient_artifacts:spawn_air run return run scoreboard players set @s dash_power 0
execute unless block ^ ^ ^1 #ancient_artifacts:spawn_air run return run scoreboard players set @s dash_power 0

tp @s ^ ^ ^0.1

execute positioned ^ ^1 ^-1 run function ancient_artifacts:utilities/knockback/deal {strength:5}

particle dust{color:[1.0,1.0,1.0],scale:4} ^ ^ ^3 0.3 0.3 0.3 0.1 10 force


