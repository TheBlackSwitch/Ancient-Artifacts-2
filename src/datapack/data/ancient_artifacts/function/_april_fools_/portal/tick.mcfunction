particle minecraft:portal ~ ~ ~ 0 0 0 0.4 20
particle minecraft:dust{"color":[0.1, 0.1, 0.2],"scale":4} ~ ~ ~ 0.1 0.1 0.1 0.4 5
execute if score #5 tbs.slow_tick matches 2 run particle minecraft:end_rod ~ ~ ~ 0.8 0.8 0.8 0 2 force
execute if score #20 tbs.slow_tick = #20 tbs.random_delay run playsound ancient_artifacts:block.nural_portal.ambient master @a ~ ~ ~ 0.7 1

execute as @a[distance=..1.5] at @s:
    execute unless items entity @s container.* minecraft:gold_nugget[custom_data~{ancient_deintelligensifier:true}] run return:
        tp @s ~ ~ ~5
        tellraw @s [{"text":"[Ancient Intelligence]: Phahaha, imagine going to my nural networld without bringing an ancient deintelligencifier. Guys we're dealing with a certified idiot here! Oooh crap, I shouldn't have told you!!","color":"red"}]
        playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
    function ancient_artifacts:_april_fools_/portal/teleport/init