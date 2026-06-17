tellraw @s [{text: "[Ancient Artifacts]", color: "light_purple"}, {text: "  [Warning]: This datapack requires function-permission level 3. This would allow ancient artifacts to slow down time but is completely optional. You can change this in your server properties or install  ", color: "gold"}, {text: "tick-lower-perm", color: "#AACCFF", underlined: true, click_event: {action: "open_url", url: "https://modrinth.com/mod/ticklowerperm/versions"}}]
scoreboard players set #message_sound temp 1
tag @s add aa.had_messages.tick_perm
