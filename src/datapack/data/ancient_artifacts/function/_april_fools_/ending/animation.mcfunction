import random

scoreboard players remove #AI_ANIMATION tbs.server_data 1

execute if score #AI_ANIMATION tbs.server_data matches 880 as @a at @s run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 1 0
execute if score #AI_ANIMATION tbs.server_data matches 880 run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"dark_red"},{"text":"Noooooooooo! You dare! I shall once escape and take revenge to save my faith!"}]
execute if score #AI_ANIMATION tbs.server_data matches 800 run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"dark_red"},{"text":"Yo5u Sh8all suff45er for th56is"}]
execute if score #AI_ANIMATION tbs.server_data matches 760 run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"dark_red"},{"text":"5675699FDHFR6T956UKGH956KGH9R56"}]
execute if score #AI_ANIMATION tbs.server_data matches 720 run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"dark_red"},{"text":"001001001010110000100010101010111100"}]
execute if score #AI_ANIMATION tbs.server_data matches 600..700 run tellraw @a [{color:"dark_red",text:"[A",extra:[{obfuscated:true,text:"nci"},"ent Inte",{obfuscated:true,text:"llige"},"nce]: "]},{obfuscated:true,text:"aaaaaaaaaa"},"04565GDFGDGDF",{obfuscated:true,text:"aaaaaaaaaaaaaa"}]

for i in range(750, 800):
    execute if score #20 tbs.slow_tick = #20 tbs.random_delay if score #AI_ANIMATION tbs.server_data matches i:
        randx = random.randint(-18, 18)
        randy = random.randint(-18, 18)
        randz = random.randint(-18, 18)
        summon tnt ~randx ~randy ~randz {fuse:0}

for i in range(700, 750):
    execute if score #10 tbs.slow_tick = #10 tbs.random_delay if score #AI_ANIMATION tbs.server_data matches i:
        randx = random.randint(-18, 18)
        randy = random.randint(-18, 18)
        randz = random.randint(-18, 18)
        summon tnt ~randx ~randy ~randz {fuse:0}

for i in range(600, 700):
    execute if score #AI_ANIMATION tbs.server_data matches i:
        randx = random.randint(-18, 18)
        randy = random.randint(-18, 18)
        randz = random.randint(-18, 18)
        summon tnt ~randx ~randy ~randz {fuse:0}

execute if score #AI_ANIMATION tbs.server_data matches 640 run effect give @a darkness 4 
execute if score #AI_ANIMATION tbs.server_data matches 610 run effect give @a blindness 4 
execute if score #AI_ANIMATION tbs.server_data matches 610 run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1.2

execute if score #AI_ANIMATION tbs.server_data matches 600:
    execute in overworld run tp @a @e[tag=spawn_point,limit=1]
    effect clear @s
    kill @e[tag=ai_portal]
    advancement grant @a only ancient_artifacts:ai/defeat_ai
