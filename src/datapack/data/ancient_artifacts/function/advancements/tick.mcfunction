execute if score #10 tbs.slow_tick matches 10 as @a at @s run function ancient_artifacts:advancements/triggers/tick

##shrinking expert
tag @a remove between_slabs
execute as @a at @s positioned ~ ~0.2 ~ run tag @s add between_slabs

##Landing expert
scoreboard players add @a time_since_dim_travel 1