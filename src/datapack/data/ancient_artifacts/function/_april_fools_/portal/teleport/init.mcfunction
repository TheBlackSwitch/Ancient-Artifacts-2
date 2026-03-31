execute in ancient_artifacts:neural_void positioned 0 0 0:
    tag @s add mobspawn
    scoreboard players set #AI_STATE tbs.server_data 3
    forceload add ~ ~
    function ./loop
    gamerule keep_inventory true