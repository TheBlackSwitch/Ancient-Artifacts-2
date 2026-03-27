
execute unless score #AI_ANIM_TYPE tbs.server_data matches 1..:
    scoreboard players set #AI_ANIMATION tbs.server_data 0
    scoreboard players set #AI_ANIM_TYPE tbs.server_data 1


execute if score #AI_ANIMATION tbs.server_data matches 10:
    tag @r add VICTIM
    execute at @a[tag=VICTIM] run summon marker ~ ~ ~ {Tags:["placement"]}
    tellraw @a[tag=VICTIM] [{"text":"[Ancient Intelligence]: ","color":"light_purple"},{"text":"Hey it looks like you're trying to build something. I'll help you with that..."}]

execute if score #AI_ANIMATION tbs.server_data matches 46..155 if score #5 tbs.slow_tick matches 3 as @a[tag=VICTIM] at @s:
    playsound minecraft:block.wood.place master @a ~ ~ ~ 1
    playsound minecraft:block.stone.place master @a ~ ~ ~ 1
    execute at @e[tag=placement,limit=1] run place template ancient_artifacts:fix_building ~-5 ~ ~-5 none none 0.08

execute if score #AI_ANIMATION tbs.server_data matches 156 as @a[tag=VICTIM] at @s:
    execute at @e[tag=placement,limit=1] run place template ancient_artifacts:fix_building ~-5 ~ ~-5 none none

execute if score #AI_ANIMATION tbs.server_data matches 180..:
    tellraw @a[tag=VICTIM] [{"text":"[Ancient Intelligence]: ","color":"light_purple"},{"text":"Voila, I hope this helps you!"}]
    tag @a remove VICTIM
    scoreboard players set #AI_ANIM_TYPE tbs.server_data 0
    scoreboard players set #AI_ANIMATION tbs.server_data 0
    kill @e[tag=placement]


scoreboard players add #AI_ANIMATION tbs.server_data 1