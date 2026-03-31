execute if block ~ ~ ~ air run return:
    tp @s ~ ~ ~
    attribute @s minecraft:gravity modifier add neural_void -0.4 add_multiplied_total

execute unless loaded ~ ~ ~ run return fail

execute positioned ~ 100 ~ if entity @s[dy=10000] positioned ~ 0 ~13:
    forceload add ~ ~
    function ./loop

execute positioned ~ ~1 ~ run function ./loop