#if mob is standing on a spawnable block
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz if block ~ ~-1 ~ #ancient_artifacts:spawn_deny run return fail
#if mobs hitbox is in air
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~ ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz unless block ~ ~1 ~ #ancient_artifacts:spawn_air run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) if entity @s[distance=..2] run return fail

#otherwise succeed
return 1