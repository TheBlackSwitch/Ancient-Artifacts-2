execute if entity @s[tag=focused] run scoreboard players add @s artifact 1
execute unless score #10 tbs.slow_tick matches 10 run return fail
scoreboard players operation #search tbs.ID = @s tbs.ID
execute if score @s artifact matches 119 as @e[type=item, distance=..10, tag=!smithed.strict] at @s facing entity @a[predicate=theblackswitch:v2.0/patch-2/player_id/match_search, limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
execute if score @s artifact matches 120 as @e[type=item, distance=..15, tag=!smithed.strict] at @s facing entity @a[predicate=theblackswitch:v2.0/patch-2/player_id/match_search, limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
execute if score @s artifact matches 121 as @e[type=item, distance=..20, tag=!smithed.strict] at @s facing entity @a[predicate=theblackswitch:v2.0/patch-2/player_id/match_search, limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
execute if score @s artifact matches 122 as @e[type=item, distance=..30, tag=!smithed.strict] at @s facing entity @a[predicate=theblackswitch:v2.0/patch-2/player_id/match_search, limit=1] feet run function ancient_artifacts:artifacts/end/attractive_toe_ring/edit_item
