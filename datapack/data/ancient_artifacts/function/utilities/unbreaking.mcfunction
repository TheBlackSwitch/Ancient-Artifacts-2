scoreboard players remove .unbreaking temp 1
execute if predicate ancient_artifacts:unbreaking run scoreboard players remove .damage temp 1
execute if score .unbreaking temp matches 1.. run function ancient_artifacts:utilities/unbreaking