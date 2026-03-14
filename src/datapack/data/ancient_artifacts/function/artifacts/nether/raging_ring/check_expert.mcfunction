scoreboard players operation #search tbs.ID = @s tbs.ID
execute at @s store result score .raged_creepers temp if entity @e[scores={rage=1..},type=creeper,distance=..50,predicate=theblackswitch:__version__/__patch__/player_id/match_search]
execute if score .raged_creepers temp matches 5.. run advancement grant @s only ancient_artifacts:artifacts/nether/raging_expert