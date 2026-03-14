

execute if entity @s[tag=opened] run return fail
execute unless data entity @s interaction run return fail
execute if score @s animation matches 1.. run return fail

tag @s add checked
data modify entity @s response set value 1b

# ===== HOLDING AMETHYST =====

execute on target if items entity @s weapon.mainhand *[custom_data~{compound:1b, type:"nether"}] run return:
    function ancient_artifacts:advancements/triggers/open_nether_chest
    scoreboard players set @n[type=interaction,tag=!opened] animation 30
    execute if predicate ancient_artifacts:survival run clear @s *[minecraft:custom_data~{compound:1b,type:"nether"}] 1

# ===== HOLDING NO AMETHYST =====

playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 1 2
execute on target run data modify storage smithed.actionbar:input message set value {json:{"text": "It seems like a quartz compound is needed...","color": "light_purple"},priority:"notification"}
execute on target run function #smithed.actionbar:message
execute positioned ~ ~-0.5 ~ run data remove entity @s interaction

