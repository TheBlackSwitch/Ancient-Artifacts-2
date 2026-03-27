


messages = [
    "aRe yOu eVeN LiStEnInG?!",
    "Please ask a question...",
    "Don't disable me please...",
    "Diablocal",
    "Did you know that when you throw an artifact in the void, It's gone?",
    "Did you know that artifacts are the main feature of this datapack?",
    "Which mob would you choose: \n A) Wild fire \n B) Rascal \n C) Your Mom",
    "Hmm... There may be a bug in my backend. Wait did I just say END. END UPDATE CONFIRMED??!!",
    "I don't know if I even know that I knew that I would have known if I can even answer your questions...",
    "Why do I even exist...",
    "Bleep bloop bloop",
    "Are you even capable enough to ask a question",
    "You'll never find all corruption fragments"
]


execute store result score #rand temp run random value (0, len(messages) - 1)

for i in range(len(messages)):
    execute if score #rand temp matches i run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"yellow"},{"text":messages[i]}]


execute as @a at @s run playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2