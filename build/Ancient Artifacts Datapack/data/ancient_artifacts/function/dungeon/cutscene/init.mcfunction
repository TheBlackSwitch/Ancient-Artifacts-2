tag @s add cutscene
$execute at @e[tag=dungeon_entrance,limit=1,sort=nearest] run summon item_display ~ ~10 ~35 {Tags:["cutscene","$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)"],Rotation:[-180f,-15f]}
tag @a[distance=..50] add cutscene
$tag @a[distance=..50] add $(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)
