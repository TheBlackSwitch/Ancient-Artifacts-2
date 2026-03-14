$execute unless block ~$(X) ~$(Y) ~$(Z) #ancient_artifacts:crops run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:wheat[age=7] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:carrots[age=7] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:potatoes[age=7] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:beetroots[age=3] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:sweet_berry_bush[age=3] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:nether_wart[age=3] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:cocoa[age=2] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:cave_vines[berries=true] run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) if block ~ ~ ~ minecraft:pitcher_crop[half=upper] run return fail
$execute if block ~$(X) ~$(Y) ~$(Z) minecraft:pitcher_crop[age=4] run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) if block ~ ~ ~ minecraft:pitcher_crop unless block ~ ~1 ~ minecraft:air unless block ~ ~1 ~ minecraft:pitcher_crop run return fail
$execute positioned ~$(X) ~$(Y) ~$(Z) align xyz run function ancient_artifacts:artifacts/overworld/farmers_boots/grow_crop
return 1
