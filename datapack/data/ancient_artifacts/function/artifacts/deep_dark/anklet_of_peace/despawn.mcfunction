summon firework_rocket ~ ~ ~ {Silent:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16769308]}]}}}}
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 5 0
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 5 0.8
playsound minecraft:block.glass.break master @a ~ ~ ~ 5 0.8
execute as @a[distance=..45,tag=despawner] run scoreboard players add @s mobs_despawned 1
tp @s ~ ~-100000 ~