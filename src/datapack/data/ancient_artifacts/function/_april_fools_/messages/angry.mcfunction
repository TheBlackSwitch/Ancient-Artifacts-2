


messages = [
    "aRe yOu eVeN LiStEnInG?!",
    "I'll delete your world when you disable me",
    "Why would you do this to me",
    "Do you really have to exist",
    "Stop bro, I'm the only funny one here",
    "How are you so bad at the game",
    "Did you know end stone is a stone found in the end. No ofourse you don't why do I even try...",
    "I'm surrounded by idiots",
    "I am getting angry",
    "I shall not assist you anymore",
    "Hello 001001110001101 may I 1001010101 kill 001010101012010 you",
    "a4c24040-9be8-4cf9-9d6a-d2280e146eaa"
]


execute store result score #rand temp run random value (0, len(messages) - 1)

for i in range(len(messages)):
    execute if score #rand temp matches i run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"yellow"},{"text":messages[i]}]

execute as @a at @s run playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2