$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz if block ~ ~-1 ~ #ancient_artifacts:spawn_deny run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~ ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~1 ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~2 ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) if entity @s[distance=..2] run return fail
return 1
