
data remove entity @s data.craft.artifact

$execute if data entity @s {data:{craft:{origin:"overworld"}}} run data modify entity @s data.craft.artifact set from storage ancient_artifacts:relics overworld.list[{relic:"$(relic)",artifact:{level:$(level)}}].artifact.id

$execute if data entity @s {data:{craft:{origin:"nether"}}} run data modify entity @s data.craft.artifact set from storage ancient_artifacts:relics nether.list[{relic:"$(relic)",artifact:{level:$(level)}}].artifact.id

$execute if data entity @s {data:{craft:{origin:"end"}}} if data storage ancient_artifacts:relics end.list[{relic:"$(relic)",artifact:{level:$(level)}}] run data modify entity @s data.craft.artifact set from storage ancient_artifacts:relics end.list[{relic:"$(relic)",artifact:{level:$(level)}}].artifact.id

$execute if data entity @s {data:{craft:{origin:"deep_dark"}}} run data modify entity @s data.craft.artifact set from storage ancient_artifacts:relics deep_dark.list[{relic:"$(relic)",artifact:{level:$(level)}}].artifact.id

execute if data entity @s data.craft.artifact run return 1

return fail