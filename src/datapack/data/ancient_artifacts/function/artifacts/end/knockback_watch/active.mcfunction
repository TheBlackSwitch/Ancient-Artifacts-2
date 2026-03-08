execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if score @s artifact matches 152 run attribute @s attack_knockback modifier add knockback_watch 0.50 add_value
execute if score @s artifact matches 153 run attribute @s attack_knockback modifier add knockback_watch 1.00 add_value
execute if score @s artifact matches 154 run attribute @s attack_knockback modifier add knockback_watch 1.50 add_value
execute if score @s artifact matches 155 run attribute @s attack_knockback modifier add knockback_watch 2.00 add_value

execute if score @s attack matches 1.. run scoreboard players add @s knockbacked 1