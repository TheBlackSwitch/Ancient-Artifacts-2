playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 3 0

summon item_display ~ ~ ~ {Motion:[0.0,-5.0,0.0],item:{id:"minecraft:gunpowder",count:1,components:{"minecraft:enchantment_glint_override":true, "minecraft:item_model":"ancient_artifacts:entity/shulker_bullet_glint" }},Tags:["strong_bullet_primer","INIT"]}

ride @e[type=item_display,tag=strong_bullet_primer,tag=INIT,limit=1] mount @s
tag @s add strong_bullet

tag @e[type=item_display,tag=strong_bullet_primer,tag=INIT] remove INIT