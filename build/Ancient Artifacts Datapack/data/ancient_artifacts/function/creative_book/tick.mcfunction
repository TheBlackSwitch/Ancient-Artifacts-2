execute as @a[scores={aa.creative_book=1..}] at @s run function ancient_artifacts:creative_book/trigger
execute as @a[scores={used_carrot_stick=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{creative_book: true}] run function ancient_artifacts:creative_book/tick/nested_execute_0
