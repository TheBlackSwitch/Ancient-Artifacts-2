execute as @a[scores={creative_book_sound=1..}] at @s run function ancient_artifacts:creative_book/sound/nested_execute_1
execute if entity @a[scores={creative_book_sound=1..}] run schedule function ancient_artifacts:creative_book/sound 1 replace
