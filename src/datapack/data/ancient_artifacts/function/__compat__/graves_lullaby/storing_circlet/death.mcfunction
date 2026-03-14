
execute unless entity @s[tag=storing_circlet] run return fail
execute if entity @s[tag=recovery_4] run return fail # don't drop the inv if we have recovery anklet

# Reset the inv on death
function ancient_artifacts:artifacts/end/storing_circlet/reset

tag @s add aa.should_modify_grave
schedule function ancient_artifacts:__compat__/graves_lullaby/storing_circlet/find_death_location 2t append