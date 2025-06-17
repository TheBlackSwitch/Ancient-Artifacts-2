tellraw @a [{"text": "[Server]: "},{"text": "Ancient Artifacts Reloaded!","color": "green","bold": true}]

##Teams
team add aa.players
team add aa.color.green
team modify aa.color.green color green
team add aa.color.yellow
team modify aa.color.yellow color yellow
team add aa.color.red
team modify aa.color.red color red

##scoreboards
scoreboard objectives add server dummy
scoreboard objectives add attack custom:damage_dealt
scoreboard objectives add ancient_artifacts_give trigger
scoreboard objectives add slow_tick dummy
scoreboard objectives add used_artifact used:warped_fungus_on_a_stick
scoreboard objectives add used_carrot_stick used:carrot_on_a_stick
scoreboard objectives add random dummy
scoreboard objectives add sneak custom:sneak_time
scoreboard objectives add health health
scoreboard objectives add prev_health dummy
scoreboard objectives add delta_health dummy
scoreboard objectives add death custom:deaths
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

##Constant
scoreboard objectives add const dummy
scoreboard players set .-1 const -1
scoreboard players set .2 const 2
scoreboard players set .5 const 5
scoreboard players set .10 const 10
scoreboard players set .11 const 11
scoreboard players set .44 const 44
scoreboard players set .16 const 16
scoreboard players set .62 const 60
scoreboard players set .70 const 70
scoreboard players set .100 const 100
scoreboard players set .120 const 120
scoreboard players set .1000 const 1000


##Init
scoreboard players set .-1 random_delay -1
scoreboard players set .3 random_delay 3
scoreboard players set .10 random_delay 10
scoreboard players set .20 random_delay 20
scoreboard players set .120 random_delay 120

execute in overworld run forceload add 0 0

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



##Fix Versions
schedule function ancient_artifacts:set_version 1t



