

##Inits
execute if score .3 slow_tick matches 3 as @a at @s store success score @s fire if predicate ancient_artifacts:is_on_fire

#makes artifacts not stack (so stacksize only counts inside bundles)
function ancient_artifacts:artifacts/no_stack

##Ticks
function ancient_artifacts:artifacts/nether/thermal_tiara/tick
function ancient_artifacts:artifacts/deep_dark/echoing_chain/tick
function ancient_artifacts:artifacts/deep_dark/detecting_borla/tick

##Artifacts
execute as @a run scoreboard players operation @s artifact = @s artifact_slot_1
execute as @a at @s run function ancient_artifacts:artifacts/active_artifact
execute as @a run scoreboard players operation @s artifact = @s artifact_slot_2
execute as @a at @s run function ancient_artifacts:artifacts/active_artifact
execute as @a run scoreboard players operation @s artifact = @s artifact_slot_3
execute as @a at @s run function ancient_artifacts:artifacts/active_artifact

##Ticks
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/tick
execute if score .10 slow_tick matches 10 run function ancient_artifacts:artifacts/overworld/deactivation_crown/tick
function ancient_artifacts:artifacts/overworld/shockwave_bracelet/tick
function ancient_artifacts:artifacts/overworld/final_shout_crown/tick
function ancient_artifacts:artifacts/overworld/explorers_boots/tick
function ancient_artifacts:artifacts/nether/burning_ring/tick
function ancient_artifacts:artifacts/nether/raging_ring/tick
execute if score .3 slow_tick matches 3 run function ancient_artifacts:artifacts/nether/fireball_ring/tick
function ancient_artifacts:artifacts/nether/cooling_boots/tick
function ancient_artifacts:artifacts/nether/combo_boots/tick
function ancient_artifacts:artifacts/deep_dark/anklet_of_peace/tick
function ancient_artifacts:artifacts/deep_dark/borla_of_silence/tick
function ancient_artifacts:artifacts/deep_dark/sonic_crystal/tick
function ancient_artifacts:artifacts/deep_dark/recycling_crystal/tick
function ancient_artifacts:artifacts/deep_dark/necromancy_anklet/tick
function ancient_artifacts:artifacts/end/storing_circlet/tick


##Resets
scoreboard players set @a bow 0
scoreboard players set @a crossbow 0
