execute unless data entity @s data.Item run data remove entity @e[tag=ancient_altar, tag=item, limit=1, dy=0] item
data modify entity @e[tag=ancient_altar, tag=item, limit=1, dy=0] item set from entity @s data.Item
execute align xyz as @e[tag=ancient_altar, tag=item, dy=0] at @s run tp @s ~ ~ ~ ~10 ~
