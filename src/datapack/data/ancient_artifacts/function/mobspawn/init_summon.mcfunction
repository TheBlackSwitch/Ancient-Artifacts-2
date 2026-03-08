$execute store result score .4 temp if entity @e[tag=mobspawned,distance=..$(range)]
$execute if score .4 temp matches $(cap).. run return fail
$execute store result score @s count run random value $(min)..$(max)
execute if score @s count matches ..0 run scoreboard players set @s count 1

$data modify storage ancient_artifacts:spawn mob set value "$(mob)"
$data modify storage ancient_artifacts:spawn nbt set value $(nbt)
$data modify storage ancient_artifacts:spawn TAG set value $(TAG)
execute align xyz positioned ~0.5 ~ ~0.5 run function ancient_artifacts:mobspawn/summon with storage ancient_artifacts:spawn

