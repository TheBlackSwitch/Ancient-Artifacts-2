tag @s add checked
say no owner
execute unless block ~ ~1 ~ dispenser[facing=down] run return fail
say found dispenser
playsound item.bottle.empty block @a ~ ~ ~ 1 1
scoreboard players add @n[type=text_display, dy=0, tag=artifact_cauldron, tag=fluid] level 1
kill @s
