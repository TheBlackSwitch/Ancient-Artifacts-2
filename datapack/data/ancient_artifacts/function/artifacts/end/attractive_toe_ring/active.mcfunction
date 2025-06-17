execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute unless score .10 slow_tick matches 10 run return fail

scoreboard players operation .search tbs.ID = @s tbs.ID

execute if score @s artifact matches 119 as @e[type=item,distance=..10] at @s facing entity @a[predicate=theblackswitch:matches_search_id,limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
execute if score @s artifact matches 120 as @e[type=item,distance=..15] at @s facing entity @a[predicate=theblackswitch:matches_search_id,limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
execute if score @s artifact matches 121 as @e[type=item,distance=..20] at @s facing entity @a[predicate=theblackswitch:matches_search_id,limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
execute if score @s artifact matches 122 as @e[type=item,distance=..30] at @s facing entity @a[predicate=theblackswitch:matches_search_id,limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item