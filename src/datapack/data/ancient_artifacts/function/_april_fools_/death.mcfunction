


messages = [
    "Dam are you that bad at the game? I shall assist you further",
    "May I assist you on your (s)kill issue",
    "Bhahahahaha you dumbass",
    "Did you know you just lost all your items",
    "How may I assist you toda- Never mind, you've already screwed it up"
]


execute store result score #rand temp run random value (0, len(messages) - 1)

for i in range(len(messages)):
    execute if score #rand temp matches i run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"red"},{"text":messages[i]}]

execute as @a at @s run playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2