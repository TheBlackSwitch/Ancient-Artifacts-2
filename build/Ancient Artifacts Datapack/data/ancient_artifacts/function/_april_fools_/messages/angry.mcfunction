execute store result score #rand temp run random value 0..11
execute if score #rand temp matches 0 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "aRe yOu eVeN LiStEnInG?!"}]
execute if score #rand temp matches 1 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "I'll delete your world when you disable me"}]
execute if score #rand temp matches 2 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "Why would you do this to me"}]
execute if score #rand temp matches 3 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "Do you really have to exist"}]
execute if score #rand temp matches 4 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "Stop bro, I'm the only funny one here"}]
execute if score #rand temp matches 5 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "How are you so bad at the game"}]
execute if score #rand temp matches 6 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "Did you know end stone is a stone found in the end. No ofourse you don't why do I even try..."}]
execute if score #rand temp matches 7 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "I'm surrounded by idiots"}]
execute if score #rand temp matches 8 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "I am getting angry"}]
execute if score #rand temp matches 9 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "I shall not assist you anymore"}]
execute if score #rand temp matches 10 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "Hello 001001110001101 may I 1001010101 kill 001010101012010 you"}]
execute if score #rand temp matches 11 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "yellow"}, {text: "a4c24040-9be8-4cf9-9d6a-d2280e146eaa"}]
execute as @a at @s run playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
