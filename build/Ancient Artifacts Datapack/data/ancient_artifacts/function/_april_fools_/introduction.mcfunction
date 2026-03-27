execute if score #AI_ANIMATION tbs.server_data matches 600 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "Hello, welcome to ancient artifacts. I'm ancient intelligence!"}]
execute if score #AI_ANIMATION tbs.server_data matches 680 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "Nice to meet you!"}]
execute if score #AI_ANIMATION tbs.server_data matches 740 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "I'm your personal AI assistent. You can ask anything in the chat."}]
execute if score #AI_ANIMATION tbs.server_data matches 820 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "Please ask something"}]
execute if score #AI_ANIMATION tbs.server_data matches 870 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "I'm desperate"}]
execute if score #AI_ANIMATION tbs.server_data matches 900.. run function ancient_artifacts:_april_fools_/introduction/nested_execute_0
scoreboard players add #AI_ANIMATION tbs.server_data 1
