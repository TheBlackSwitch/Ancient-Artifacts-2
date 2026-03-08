
# open / close
execute as @a at @s run function ancient_artifacts:ancient_parchment/open_closing

#fix item drops
execute as @e[type=item,tag=!checked_parchement_close] if items entity @s container.0 carrot_on_a_stick[custom_data~{parchment:1b,open:1b}] run item modify entity @s container.0 ancient_artifacts:parchment/close
tag @e[type=item] add checked_parchement_close

execute if score #20 tbs.slow_tick matches 2 as @a[scores={parchment_open=1}] run function ancient_artifacts:ancient_parchment/show/tick


