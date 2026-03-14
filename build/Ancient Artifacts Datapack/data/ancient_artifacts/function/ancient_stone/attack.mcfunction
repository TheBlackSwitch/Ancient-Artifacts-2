execute on attacker unless entity @s[gamemode=creative] align xyz if entity @e[type=item_display, dy=0, tag=ancient_stone, tag=item] run return run data remove entity @s attack
execute on attacker unless entity @s[gamemode=creative] as @e[type=interaction, tag=ancient_stone, limit=1, sort=nearest] run scoreboard players add @s chest_break_progress 1
execute on attacker if entity @s[gamemode=creative] as @e[type=interaction, tag=ancient_stone, limit=1, sort=nearest] run scoreboard players set @s chest_break_progress 4
scoreboard players set @s repair_delay 10
execute align xyz unless entity @e[tag=break, dy=0] run summon item_display ~0.5 ~0.5 ~0.5 {item: {id: "minecraft:gunpowder", count: 1b}, Tags: ["break", "smithed.entity", "smithed.strict"]}
