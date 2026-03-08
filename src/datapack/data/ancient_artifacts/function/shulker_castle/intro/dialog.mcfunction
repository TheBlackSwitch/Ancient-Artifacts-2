execute unless entity @a[distance=..96] run return run function ancient_artifacts:shulker_castle/intro/reset

scoreboard players add @s animation 1

##Intro
execute if score @s animation matches 5 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Hello...","color":"light_purple"}]
execute if score @s animation matches 13 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Hello?","color":"light_purple"}]
execute if score @s animation matches 20 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Please, I need help?","color":"light_purple"}]
execute if score @s animation matches 28 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Right Here in the middle of the castle!","color":"light_purple"}]
execute if score @s animation matches 28 run effect give @s glowing infinite 0 true

##Wait for the player to arrive

execute if score @s animation matches 35 store result score .random temp run random value 1..5
execute if score @s animation matches 35 if score .random temp matches 1 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Come on!","color":"light_purple"}]
execute if score @s animation matches 35 if score .random temp matches 2 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Over here!","color":"light_purple"}]
execute if score @s animation matches 35 if score .random temp matches 3 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Please...","color":"light_purple"}]
execute if score @s animation matches 35 if score .random temp matches 4 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"I'm desperate...","color":"light_purple"}]
execute if score @s animation matches 35 if score .random temp matches 5 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"I got some loot for you...","color":"light_purple"}]

execute if score @s animation matches 45 unless entity @a[distance=..5] run scoreboard players set @s animation 29
execute if score @s animation matches 28..45 if entity @a[distance=..5] run scoreboard players set @s animation 100

##Player Arrived
execute if score @s animation matches 105 run effect clear @s glowing
execute if score @s animation matches 105 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Ooh you arrived! Thank you..","color":"light_purple"}]
execute if score @s animation matches 113 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"My shulker friends kicked me out of their city...","color":"light_purple"}]
execute if score @s animation matches 122 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"and poisoned me!","color":"light_purple"}]
execute if score @s animation matches 127 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"All of that just because.. well I'm different! Too.. yellow..","color":"light_purple"}]
execute if score @s animation matches 139 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"I need your help to cure my poison...","color":"light_purple"}]
execute if score @s animation matches 151 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"For that I need 1 artifact... It can be of any rarity..","color":"light_purple"}]
execute if score @s animation matches 163 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"But the rarer, the more power I will gai- uugh have left to take revenge!","color":"light_purple"}]
execute if score @s animation matches 175 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"And! The better loot YOU will get, yes YOU will be rewarded for this!","color":"light_purple"}]
execute if score @s animation matches 187 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"\n 2 end artifact chests for a Common,\n 4 for an Uncommon,\n 6 for a Rare one,\n 8 for a Unique (expensive) one and\n 12 for a divine one!","color":"light_purple"}]

##Wait for the player to arrive

execute if score @s animation matches 202 store result score .random temp run random value 1..6
execute if score @s animation matches 202 if score .random temp matches 1 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"You need to save my life!","color":"light_purple"}]
execute if score @s animation matches 202 if score .random temp matches 2 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"I need the power!","color":"light_purple"}]
execute if score @s animation matches 202 if score .random temp matches 3 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Please...","color":"light_purple"}]
execute if score @s animation matches 202 if score .random temp matches 4 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"I'm desperate...","color":"light_purple"}]
execute if score @s animation matches 202 if score .random temp matches 5 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"You get loot for it?","color":"light_purple"}]
execute if score @s animation matches 202 if score .random temp matches 6 run tellraw @a[distance=..64] [{"text":"[Lost shulker]: ","color":"yellow"},{"text":"Just give me an artifact.. please","color":"light_purple"}]

execute if score @s animation matches 217.. unless entity @s[tag=artifact_aquired] run scoreboard players set @s animation 201

execute if score @s animation matches 187 unless entity @s[tag=artifact_aquired] align xyz unless entity @e[type=interaction,dy=0] run summon minecraft:interaction ~0.5 ~ ~0.5 {width:2f,height:2f,Tags:["shulker_king_offer"],response:true}