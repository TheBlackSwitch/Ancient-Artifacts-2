function #theblackswitch:v2.0/clear_item/enable
function #theblackswitch:v2.0/easing/enable
function #theblackswitch:v2.0/overlay/enable
function #theblackswitch:v2.0/slow_tick/enable
execute store result score .keep_inventory server run function ancient_artifacts:utilities/gamerule/get_keep_inventory
function ancient_artifacts:artifact_manual/tick
execute as @a run function ancient_artifacts:calc_health
execute if score #5 tbs.slow_tick matches 5 as @e[type=marker, tag=abandoned_well] at @s run function ancient_artifacts:abandoned_well
execute if score #10 tbs.slow_tick matches 9 as @a[scores={hide_artifact_hud=0}] run function ancient_artifacts:artifact_hud/tick
execute as @a run function ancient_artifacts:config/tick
function ancient_artifacts:ancient_hammer/tick
function ancient_artifacts:mystery_box/tick
function ancient_artifacts:advancements/tick
function ancient_artifacts:artifact_smith/tick
function ancient_artifacts:artifact_chests/tick
function ancient_artifacts:ancient_altar/tick
function ancient_artifacts:ancient_stone/tick
function ancient_artifacts:artifact_hotbar/tick
function ancient_artifacts:artifact_upgrade/tick
function ancient_artifacts:artifacts/tick
function ancient_artifacts:dungeon/tick
function ancient_artifacts:artifact_golem/tick
function ancient_artifacts:artifact_cauldron/tick
function ancient_artifacts:ancient_parchment/tick
function ancient_artifacts:mobspawn/tick
function ancient_artifacts:sculk_heart/tick
function ancient_artifacts:expansion_star/tick
function ancient_artifacts:shulker_castle/tick
function ancient_artifacts:creative_book/tick
function ancient_artifacts:update/tick
function ancient_artifacts:messages/tick
execute if score #10 tbs.slow_tick matches 10 as @a if items entity @s container.* echo_shard[minecraft:custom_data~{echo_chunk: true}] run function ancient_artifacts:echo_chunk
execute as @a at @s run function ancient_artifacts:timewarp
execute as @a if score @s shield_time = @s prev_shield_time run function ancient_artifacts:reset_shield_time
execute as @a run scoreboard players operation @s prev_shield_time = @s shield_time
execute as @a if score @s bow_time = @s prev_bow_time run function ancient_artifacts:reset_bow_time
execute as @a run scoreboard players operation @s prev_bow_time = @s bow_time
scoreboard players set @a walk 0
scoreboard players set @a damage 0
scoreboard players set @a sprint 0
scoreboard players set @a sneak 0
scoreboard players set @a player_left 0
scoreboard players set @a used_carrot_stick 0
scoreboard players set @a attack 0
scoreboard players set @a cod_spawn_egg_use 0
team join aa.players @a
schedule function ancient_artifacts:tick 1 replace
