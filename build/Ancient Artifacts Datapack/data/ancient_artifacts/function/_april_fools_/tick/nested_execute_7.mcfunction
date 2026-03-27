tag @s add creeper
tellraw @a [{text: "[Ancient Intelligence]: ", color: "aqua"}, {text: "Watchout! A creeper! I'll protect you!"}]
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:water replace air
playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
playsound minecraft:item.bucket.empty master @s ~ ~ ~ 1 1
playsound minecraft:entity.generic.splash master @s ~ ~ ~ 1 2
playsound minecraft:entity.generic.splash master @s ~ ~ ~ 1 1
