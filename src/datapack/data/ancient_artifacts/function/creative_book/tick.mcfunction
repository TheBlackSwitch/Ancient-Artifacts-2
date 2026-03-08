execute as @a[scores={aa.creative_book=1..}] at @s run function ancient_artifacts:creative_book/trigger

execute as @a[scores={used_carrot_stick=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{creative_book:true}]:
    scoreboard players set @s creative_book_sound 10
    schedule function ancient_artifacts:creative_book/sound 1t replace