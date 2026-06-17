loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ diamond_block run scoreboard players add .diamond_mined temp 1
setblock ~ ~ ~ air replace
scoreboard players operation #search tbs.ID = @s tbs.ID
execute if entity @s[tag=mine_experience] if predicate theblackswitch:v2.0/patch-3/rand/10 align xyz positioned ~0.5 ~0.5 ~0.5 run function ancient_artifacts:artifacts/deep_dark/experienced_chain/summon_orb
execute if entity @s[tag=smelt] align xyz as @e[type=item, dy=0, tag=!checked_smelt] store result score @s age run data get entity @s Age
execute if entity @s[tag=smelt] align xyz as @n[type=item, dy=0, scores={age=..1}, tag=!checked_smelt, tag=!smelted] run function ancient_artifacts:artifacts/nether/smelting_tiara/smelt
execute if entity @s[tag=smelt] if entity @e[type=item, dy=0, tag=!checked_smelt] if score .is_smelted temp matches 1 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-3/player_id/match_search] blocks_smelted 1
