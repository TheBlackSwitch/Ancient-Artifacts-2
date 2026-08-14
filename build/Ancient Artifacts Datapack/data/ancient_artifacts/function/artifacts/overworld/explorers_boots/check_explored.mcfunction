execute if dimension designer:plot_1 run return fail
execute if dimension designer:plot_2 run return fail
execute if dimension designer:plot_3 run return fail
execute if dimension designer:plot_4 run return fail
execute if dimension designer:plot_5 run return fail
$execute positioned $(X) 320 $(Z) unless entity @e[type=marker,tag=explored_chunk,distance=..1] if entity @s[tag=explorers_boots] run scoreboard players add @s explored_chunks 1
$execute positioned $(X) 320 $(Z) unless entity @e[type=marker,tag=explored_chunk,distance=..1] if entity @s[tag=explorers_boots] run scoreboard players add @s total_explored_chunks 1
$execute positioned $(X) 320 $(Z) unless entity @e[type=marker,tag=explored_chunk,distance=..1] run summon marker ~ ~ ~ {Tags:[explored_chunk]}
