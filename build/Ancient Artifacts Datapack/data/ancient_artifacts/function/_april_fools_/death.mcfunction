execute store result score #rand temp run random value 0..4
execute if score #rand temp matches 0 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "red"}, {text: "Dam are you that bad at the game? I shall assist you further"}]
execute if score #rand temp matches 1 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "red"}, {text: "May I assist you on your (s)kill issue"}]
execute if score #rand temp matches 2 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "red"}, {text: "Bhahahahaha you dumbass"}]
execute if score #rand temp matches 3 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "red"}, {text: "Did you know you just lost all your items"}]
execute if score #rand temp matches 4 run tellraw @a [{text: "[Ancient Intelligence]: ", color: "red"}, {text: "How may I assist you toda- Never mind, you've already screwed it up"}]
execute as @a at @s run playsound minecraft:block.cherry_wood_button.click_on master @s ~ ~ ~ 1 2
