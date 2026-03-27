
execute if score #AI_STATE tbs.server_data matches 1..2 if predicate theblackswitch:__version__/__patch__/rand/1:
    function ./animations/fix_building

advancement revoke @s only ancient_artifacts:place_block