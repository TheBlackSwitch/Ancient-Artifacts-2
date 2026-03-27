tellraw @a[tag=VICTIM] [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "Voila, I hope this helps you!"}]
tag @a remove VICTIM
scoreboard players set #AI_ANIM_TYPE tbs.server_data 0
scoreboard players set #AI_ANIMATION tbs.server_data 0
kill @e[tag=placement]
