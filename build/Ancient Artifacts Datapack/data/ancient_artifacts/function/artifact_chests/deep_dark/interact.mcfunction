execute if entity @s[tag=opened] run return fail
execute unless data entity @s interaction run return fail
execute if score @s animation matches 1.. run return fail
tag @s add checked
data modify entity @s response set value 1b
execute on target if items entity @s weapon.mainhand *[custom_data~{compound: 1b, type: "deep_dark"}] run return run function ancient_artifacts:artifact_chests/deep_dark/interact/nested_return_0
playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute on target run data modify storage smithed.actionbar:input message set value {json: {text: "It seems like an echoing compound is needed...", color: "light_purple"}, priority: "notification"}
execute on target run function #smithed.actionbar:message
execute positioned ~ ~-0.5 ~ run data remove entity @s interaction
