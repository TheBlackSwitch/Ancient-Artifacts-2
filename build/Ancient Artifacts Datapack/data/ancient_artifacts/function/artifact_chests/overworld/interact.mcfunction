execute if entity @s[tag=opened] run return fail
execute unless data entity @s interaction run return fail
execute if score @s animation matches 1.. run return fail
tag @s add checked
data modify entity @s response set value 1b
execute on target if items entity @s weapon.mainhand amethyst_shard[!custom_data~{smithed: {ignore: {crafting: true}}}, !custom_data~{compound: true}] run return run function ancient_artifacts:artifact_chests/overworld/interact/nested_return_0
playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute on target run data modify storage smithed.actionbar:input message set value {json: {text: "It seems like an amethyst shard is needed...", color: "light_purple"}, priority: "notification"}
execute on target run function #smithed.actionbar:message
execute positioned ~ ~-0.5 ~ run data remove entity @s interaction
