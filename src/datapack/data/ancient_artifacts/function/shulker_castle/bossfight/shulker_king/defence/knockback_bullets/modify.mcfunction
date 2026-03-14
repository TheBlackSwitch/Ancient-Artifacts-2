tag @s add knockback_bullet_checked
execute if predicate theblackswitch:__version__/__patch__/rand/50 run return fail

playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 3 0

summon item_display ~ ~ ~ {Motion:[0.0,-5.0,0.0],item:{id:"minecraft:gunpowder",count:1,components:{"minecraft:enchantment_glint_override":true, "minecraft:item_model":"ancient_artifacts:entity/knockback_bullet_glint" }},Tags:["knockback_bullet_primer","INIT"]}

ride @e[type=item_display,tag=knockback_bullet_primer,tag=INIT,limit=1] mount @s
tag @s add knockback_bullet

tag @e[type=item_display,tag=knockback_bullet_primer,tag=INIT] remove INIT