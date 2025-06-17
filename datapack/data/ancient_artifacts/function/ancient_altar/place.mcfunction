execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~-2 ~
execute at @s unless block ~ ~ ~ air run loot spawn ~ ~ ~ loot ancient_artifacts:block/ancient_altar
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s unless block ~ ~ ~ air run return fail

execute at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:[ancient_altar,display],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},interpolation_duration:4,item:{id:"minecraft:cod_spawn_egg",count:1b,components:{"minecraft:item_model":"ancient_artifacts:block/ancient_altar"}}}
execute at @s align xyz run summon interaction ~0.5 ~-0.005 ~0.5 {width:1.01f,height:1.01f,Tags:[ancient_altar,interact]}
execute at @s align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[ancient_altar,control]}
execute at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:[ancient_altar,item],item_display:"ground",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},teleport_duration:3}

execute at @s run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.8
#hitbox
execute at @s align xyz positioned ~0.375 ~0.01 ~0.375 run summon item_display ~ ~ ~ {Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.75}],Tags:[ancient_altar,hitbox,"no_damage"]}],Tags:[ancient_altar,hitbox]}
execute at @s align xyz positioned ~0.625 ~0.01 ~0.375 run summon item_display ~ ~ ~ {Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.75}],Tags:[ancient_altar,hitbox,"no_damage"]}],Tags:[ancient_altar,hitbox]}
execute at @s align xyz positioned ~0.375 ~0.01 ~0.625 run summon item_display ~ ~ ~ {Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.75}],Tags:[ancient_altar,hitbox,"no_damage"]}],Tags:[ancient_altar,hitbox]}
execute at @s align xyz positioned ~0.625 ~0.01 ~0.625 run summon item_display ~ ~ ~ {Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.75}],Tags:[ancient_altar,hitbox,"no_damage"]}],Tags:[ancient_altar,hitbox]}

#reset
kill @s