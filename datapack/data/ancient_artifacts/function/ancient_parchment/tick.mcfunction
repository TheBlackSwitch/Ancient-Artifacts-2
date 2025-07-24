
##generate recipe
execute as @a[predicate=ancient_artifacts:holding_parchment] unless data entity @s SelectedItem.components."minecraft:custom_data".recipe run function ancient_artifacts:ancient_parchment/generate/init

##open / close
execute as @a at @s run function ancient_artifacts:ancient_parchment/open_closing
#fix item drops
execute as @e[type=item,tag=!checked_parchement_close] if items entity @s container.0 carrot_on_a_stick[custom_data~{parchment:1b,open:1b}] run item modify entity @s container.0 [{"function":"set_custom_model_data",strings:{mode:"replace_section",offset:0,values:["close"]}},{function:"set_custom_data",tag:{open:0}}]
tag @e[type=item] add checked_parchement_close

execute if score .20 slow_tick matches 2 as @a[scores={parchment_open=1}] run function ancient_artifacts:ancient_parchment/show/tick


