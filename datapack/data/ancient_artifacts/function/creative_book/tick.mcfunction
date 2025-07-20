
execute as @a[gamemode=creative,tag=!aa.received_creative_book] run function ancient_artifacts:creative_book/give_book

execute as @a[scores={aa.creative_book=1..}] at @s run function ancient_artifacts:creative_book/trigger

execute as @a[scores={creative_book_sound=1..}] at @s run function ancient_artifacts:creative_book/creative_book_sound

execute as @a[scores={used_carrot_stick=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{creative_book:true}] run scoreboard players set @s creative_book_sound 10

scoreboard players enable @a aa.creative_book