execute on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] as @e[type=interaction, limit=1, sort=nearest, tag=!opened] run return run scoreboard players add @s amethyst_count 1
playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute on target run data modify storage smithed.actionbar:input message set value {json: {text: "It seems like an amethyst shard is needed...", color: "light_purple"}, priority: "notification"}
execute on target run function #smithed.actionbar:message
execute positioned ~ ~-0.5 ~ run data remove entity @s interaction
