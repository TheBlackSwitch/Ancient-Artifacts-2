summon item_display ~ ~ ~ {Tags:[fireball_ring,INIT],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:fire_charge",count:1}}
data merge entity @s {HasVisualFire:1b,pickup:0b,Tags:[fireball_ring,INIT],PierceLevel:0b}

ride @e[type=item_display,tag=fireball_ring,tag=INIT,limit=1] mount @e[type=#minecraft:arrows,tag=fireball_ring,tag=INIT,limit=1]
tag @e[tag=fireball_ring] remove INIT