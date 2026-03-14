$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz if block ~ ~-1 ~ #ancient_artifacts:spawn_deny run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~ ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~1 ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz if entity @a[distance=..5] run return fail
$execute if data storage ancient_artifacts:spawn {sky_check:1} positioned ~$(X) ~$(Y) ~$(Z) run function ancient_artifacts:mobspawn/sky_check
execute if data storage ancient_artifacts:spawn {sky_check: 1} if score .5 temp matches 1 run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz if entity @a[distance=..5] run return fail
return 1
