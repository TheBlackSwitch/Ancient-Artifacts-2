


messages = [
    "Did you know your advancements will tell you everything!",
    "Did you know that when you throw an artifact in the void, It's gone?",
    "I am super intelligent!",
    "What can I do for you?",
    "Did you know.",
    "How do you call an artifact that doesn't work? An artifake! [Lauging noises] \n (Please laugh I'll delete your world if you don't)",
    "Fun fact, I can't be disabled! Or is it?! [VSAUSE MUSIC]",
    "Did you know that artifacts are the main feature of this datapack?",
    "Hello!",
    "How can I be of assistance?",
    "I don't know if I even know that I knew that I would have known if I can even answer your questions...",
    "What's the most essential in ancient artifacts? It's artifact essence ofcourse!",
    "Roses are red violets are blue",
    "Roses are red violets are blue, is there anyway I can help you?",
    "Did you know artifacts can be used to grant powers?",
    "You can disable me through the following steps: \n 1. Ask me a question \n 2. Find the divine artifact \n 3. Subscribe to theblackswitch on youtube \n 4. Make a donation on theblackswitch's buy-me-a-coffee page",
    "Happy ancient fools!",
    "Your limit for our AI2-4 model is reached now using unintelligent AI2-1 mini model... Please upgrade to AI2 devine edition"
]


execute store result score #rand temp run random value (0, len(messages) - 1)

for i in range(len(messages)):
    execute if score #rand temp matches i run tellraw @a [{"text": "[Ancient Intelligence]: ","color":"green"},{"text":messages[i]}]


execute as @a at @s run playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2