execute unless score @s parchment_open matches -1.. run scoreboard players set @s parchment_open 0

#on right click
execute if entity @s[scores={used_carrot_stick=1..},predicate=ancient_artifacts:holding_parchment] if score @s parchment_open matches 0 run function ancient_artifacts:ancient_parchment/open
execute if entity @s[scores={used_carrot_stick=1..},predicate=ancient_artifacts:holding_parchment] if score @s parchment_open matches 1 run function ancient_artifacts:ancient_parchment/close
execute if score @s parchment_open matches -1 run scoreboard players set @s parchment_open 1

#on slot change
execute if score @s parchment_open matches 1 store result score .current_slot temp run data get entity @s SelectedItemSlot
execute if score @s parchment_open matches 1 unless score @s parchment_slot = .current_slot temp at @s run function ancient_artifacts:ancient_parchment/close

#on drop
execute if score @s parchment_open matches 1 unless entity @s[predicate=ancient_artifacts:holding_parchment] at @s run function ancient_artifacts:ancient_parchment/close

#on gui open
execute if items entity @s player.cursor carrot_on_a_stick[minecraft:custom_data~{parchment:1b}] run item modify entity @s player.cursor {"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}}