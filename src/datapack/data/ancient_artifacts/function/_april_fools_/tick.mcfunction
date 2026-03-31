import random
import math

function ./animations/tick
function ./cauldron/tick

execute unless score #AI_STATE tbs.server_data matches 1.. run function ./introduction
execute if score #AI_STATE tbs.server_data matches 1 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:__version__/__patch__/rand/5 run function ./messages/neutral
execute if score #AI_STATE tbs.server_data matches 2 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:__version__/__patch__/rand/5 run function ./messages/neutral
execute if score #AI_STATE tbs.server_data matches 3 if score #160 tbs.slow_tick matches 3 if predicate theblackswitch:__version__/__patch__/rand/5 run function ./messages/neutral
execute if score #AI_STATE tbs.server_data matches 4 at @n[type=interaction,tag=ai] run function ./ending/animation

execute if score #AI_STATE tbs.server_data matches 1..2 as @a at @s:
    execute unless entity @s[tag=lush_cave_here] if biome ~ ~ ~ minecraft:lush_caves:
        tag @s add lush_cave_here
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "Lush cave here!"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        
    execute if entity @s[tag=lush_cave_here] unless biome ~ ~ ~ minecraft:lush_caves:
        tag @s remove lush_cave_here

    execute unless entity @s[tag=chicken_jokey] if entity @e[predicate=ancient_artifacts:is_chicken_jokey,distance=..7]:
        tag @s add chicken_jokey
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "CHICKEN JOKEY!"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        
    execute if entity @s[tag=chicken_jokey] unless entity @e[predicate=ancient_artifacts:is_chicken_jokey,distance=..7]:
        tag @s remove chicken_jokey

    execute unless entity @s[tag=flint_and_steel] if items entity @s weapon.mainhand minecraft:flint_and_steel:
        tag @s add flint_and_steel
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "FLINT AND STEEL!"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        
    execute if entity @s[tag=flint_and_steel] unless items entity @s weapon.mainhand minecraft:flint_and_steel:
        tag @s remove flint_and_steel

    execute unless entity @s[tag=the_nether] if dimension minecraft:the_nether:
        tag @s add the_nether
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "THE NETHER!"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        
    execute if entity @s[tag=the_nether] unless dimension minecraft:the_nether:
        tag @s remove the_nether

    execute unless entity @s[tag=this_is_a_craftingtable] if items entity @s weapon.mainhand minecraft:crafting_table:
        tag @s add this_is_a_craftingtable
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "THIS, IS A CRAFTING TABLE!"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        
    execute if entity @s[tag=this_is_a_craftingtable] unless items entity @s weapon.mainhand minecraft:crafting_table:
        tag @s remove this_is_a_craftingtable

    execute if items entity @s weapon.mainhand #minecraft:swords:
        clear @s #minecraft:swords
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "Hmm that item looks to dangerous for you..."}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2

    execute unless entity @s[tag=zombie] if entity @e[distance=..7,type=minecraft:zombie]:
        tellraw @a [{"text": "[Ancient Intelligence]: "},{"text": "Oof a zombie, you probably don't want to see that..."}]
        effect give @s blindness 50
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        tag @s add zombie

    execute if entity @s[tag=zombie] unless entity @e[distance=..7,type=minecraft:zombie]:
        tag @s remove zombie

    execute unless entity @s[tag=creeper] if entity @e[type=creeper,distance=..5]:
        tag @s add creeper
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "Watchout! A creeper! I'll protect you!"}]
        fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:water replace air
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        playsound minecraft:item.bucket.empty master @s ~ ~ ~ 1 1
        playsound minecraft:entity.generic.splash master @s ~ ~ ~ 1 2
        playsound minecraft:entity.generic.splash master @s ~ ~ ~ 1 1
        
    execute if entity @s[tag=creeper] unless entity @e[type=creeper,distance=..5]:
        tag @s remove creeper

    execute unless entity @s[tag=manual] if items entity @s weapon.mainhand *[minecraft:custom_data~{"manual":1b}]:
        tag @s add manual
        tellraw @a [{"text": "[Ancient Intelligence]: ","color":"aqua"},{"text": "Pff why do you even need an artifact manual? You have me of course!"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
        
    execute if entity @s[tag=manual] unless items entity @s weapon.mainhand *[minecraft:custom_data~{"manual":1b}]:
        tag @s remove manual


execute if score #AI_STATE tbs.server_data matches 2..3 if score #160 tbs.slow_tick matches 100 if predicate theblackswitch:__version__/__patch__/rand/1 run tellraw @r [{"text":"[Ancient Intelligence]: Roses are red violets are blue, I've just generated a picture of you: \n","color":"aqua"},{"text":"\uF600","font":"ancient_artifacts:main","color":"white"},{"text":"\n\n\n\n\n"}]

execute as @e[tag=ai_portal] at @s run function ancient_artifacts:_april_fools_/portal/tick

execute if score #5 tbs.slow_tick matches 3 as @a at @s if dimension ancient_artifacts:neural_void:
    execute anchored eyes run particle minecraft:trail{duration:99,color:[0.1,0.6,0.1],target:[234, 60, 576]}
    effect give @s jump_boost 10 0 true
    effect give @s speed 10 0 true

execute in ancient_artifacts:neural_void positioned 228 56 570 if loaded ~ ~ ~ run place template ancient_artifacts:ai ~ ~ ~

execute as @e[type=interaction,tag=ai] at @s if data entity @s interaction:
    on target if items entity @s[distance=..5] weapon.mainhand minecraft:gold_nugget[custom_data~{ancient_deintelligensifier:true}]:
        clear @s *[custom_data~{ancient_deintelligensifier:true}]
        function ./ending/init
    data remove entity @s interaction


print("start")
execute as @e[type=interaction,tag=ai] at @s:
    execute if score #10 tbs.slow_tick matches 3 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 0
    tag @s add the_only_real_one
    kill @e[type=interaction,tag=ai,tag=!the_only_real_one,distance=..5]
    data merge entity @s {width:1.5,height:1.5,response:1b}

    execute if score #5 tbs.slow_tick matches 5 run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 3 10

    scoreboard players add @s animation 1

    for frame in range(360):
        execute if score @s animation matches frame:
            random.seed(356)
            for x in range(360):
                for y in range(-15, 15):
                    if random.randint(1, 216) == 1:
                        rotx = x + frame * 2
                        roty = y + math.sin(frame / 180 * math.pi) * 10
                        execute rotated rotx roty run particle minecraft:dust{color:[0.2,0.1,0.2],scale:1} ^ ^ ^8

    execute if score @s animation matches 360.. run scoreboard players set @s animation 0

print('end')