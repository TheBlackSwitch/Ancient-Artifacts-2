tellraw @a[tag=show_lootbox_message] [{text: "You have ", color: "light_purple"}, {score: {name: "@s", objective: "lootbox_count"}}, {text: " lootboxes yet to claim! Use "}, {text: "/trigger lootbox", color: "blue", underlined: true, click_event: {action: "suggest_command", command: "/trigger lootbox"}}, {text: " to claim them!"}]
execute as @a[tag=show_lootbox_message] at @s run playsound block.note_block.bell
tag @a remove show_lootbox_message
