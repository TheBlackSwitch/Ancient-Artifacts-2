scoreboard players operation .1 temp = @s attack
scoreboard players operation .1 temp *= #multiplier temp
scoreboard players operation @s saturating_level += .1 temp
execute if score @s saturating_level matches 4000.. run effect give @s saturation 1 0 true
execute if score @s saturating_level matches 4000.. run playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1
execute if score @s saturating_level matches 4000.. run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
execute if score @s saturating_level matches 4000.. run scoreboard players add @s food_saturated 1
execute if score @s saturating_level matches 4000.. run scoreboard players remove @s saturating_level 4000
execute if score @s saturating_level matches 40000.. run scoreboard players set @s saturating_level 0