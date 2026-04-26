function ancient_artifacts:artifacts/nether/smelting_tiara/smelt
execute if score .is_smelted temp matches 1:
    function ancient_artifacts:artifacts/nether/smelting_tiara/particles
    scoreboard players add @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search] blocks_smelted 1