
#-------------------------------------------------------
## Teams
#-------------------------------------------------------

team add aa.players
team add aa.color.green
team modify aa.color.green color green
team add aa.color.yellow
team modify aa.color.yellow color yellow
team add aa.color.red
team modify aa.color.red color red

#-------------------------------------------------------
## Scoreboards
#-------------------------------------------------------

scoreboard objectives add server dummy
scoreboard objectives add attack custom:damage_dealt
scoreboard objectives add slow_tick dummy
scoreboard objectives add used_artifact used:warped_fungus_on_a_stick
scoreboard objectives add used_carrot_stick used:carrot_on_a_stick
scoreboard objectives add random dummy
scoreboard objectives add sneak custom:sneak_time
scoreboard objectives add health health
scoreboard objectives add prev_health dummy
scoreboard objectives add delta_health dummy
scoreboard objectives add aa.death custom:deaths
scoreboard objectives add animation dummy
scoreboard objectives add X dummy
scoreboard objectives add Z dummy
scoreboard objectives add Y dummy
scoreboard objectives add random_delay dummy
scoreboard objectives add player_left custom:leave_game
scoreboard objectives add xRot dummy
scoreboard objectives add yRot dummy
scoreboard objectives add temp dummy
scoreboard objectives add shield_time dummy
scoreboard objectives add prev_shield_time dummy
scoreboard objectives add prevShader dummy
scoreboard objectives add shader_animation dummy
scoreboard objectives add raycast_limit dummy
scoreboard objectives add walk custom:walk_one_cm
scoreboard objectives add sprint custom:sprint_one_cm
scoreboard objectives add damage custom:damage_taken
scoreboard objectives add bow_time dummy
scoreboard objectives add prev_bow_time dummy
scoreboard objectives add timewarp_sound_delay dummy
scoreboard objectives add time_since_dim_travel dummy
scoreboard objectives add lootbox trigger
scoreboard objectives add lootbox_count dummy
scoreboard objectives add join minecraft.custom:minecraft.leave_game
scoreboard objectives add play_time custom:play_time
scoreboard objectives add cod_spawn_egg_use minecraft.used:minecraft.cod_spawn_egg

#-------------------------------------------------------
## Other inits
#-------------------------------------------------------

tellraw @a [{"text": "[Server]: "},{"text": "Ancient Artifacts Reloaded!","color": "green","bold": true}]
execute in overworld run forceload add 0 0

#-------------------------------------------------------
## Main load functions
#-------------------------------------------------------

function ancient_artifacts:convert/load
function ancient_artifacts:utilities/tool_use/load
function ancient_artifacts:ancient_parchment/load
function ancient_artifacts:ancient_stone/load
function ancient_artifacts:advancements/load
function ancient_artifacts:relic/load
function ancient_artifacts:artifact_manual/load
function ancient_artifacts:artifact_smith/load
function ancient_artifacts:ancient_altar/load
function ancient_artifacts:ancient_hammer/load
function ancient_artifacts:artifact_hotbar/load
function ancient_artifacts:artifact_cauldron/load
function ancient_artifacts:artifact_chests/load
function ancient_artifacts:artifact_upgrade/load
function ancient_artifacts:artifact_chests/load
function ancient_artifacts:artifacts/load
function ancient_artifacts:dungeon/load
function ancient_artifacts:artifact_golem/load
function ancient_artifacts:sculk_heart/load
function ancient_artifacts:config/load
function ancient_artifacts:shulker_castle/load
function ancient_artifacts:creative_book/load
function ancient_artifacts:update/load
function ancient_artifacts:messages/load

# Register the library version that this pack uses
schedule function ancient_artifacts:tick 1t replace