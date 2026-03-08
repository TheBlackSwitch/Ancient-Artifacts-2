execute unless data entity @s Passengers at @s run function ancient_artifacts:artifacts/nether/raging_ring/summon_controller

scoreboard players operation #search tbs.ID = @s tbs.ID

execute on passengers run data modify entity @s angry_at set from entity @e[type=#ancient_artifacts:can_harm,tag=!rage_controller,tag=!smithed.strict,predicate=!theblackswitch:__version__/__patch__/player_id/match_search,limit=1,sort=nearest,distance=..20] UUID

effect give @s strength 2 0 true
effect give @s resistance 2 1 true

tag @s add raged
execute store result storage ancient_artifacts:attack damage float 1 run attribute @s attack_damage get
execute as @e[type=#ancient_artifacts:can_harm,tag=!smithed.strict,tag=!rage_controller,predicate=!theblackswitch:__version__/__patch__/player_id/match_search,limit=1,sort=nearest,distance=..2] run function ancient_artifacts:artifacts/nether/raging_ring/damage with storage ancient_artifacts:attack
tag @s remove raged

particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.2 0.5 0.2 0 2
scoreboard players remove @s rage 1

execute if score @s rage matches 0 run function ancient_artifacts:artifacts/nether/raging_ring/reset_rage