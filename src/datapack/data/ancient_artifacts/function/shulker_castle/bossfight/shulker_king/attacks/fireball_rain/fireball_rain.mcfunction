execute store result storage ancient_artifacts:player offset.x int 1 run random value -15..15
execute store result storage ancient_artifacts:player offset.z int 1 run random value -15..15

execute if predicate theblackswitch:__version__/__patch__/rand/20 run data merge storage ancient_artifacts:player {offset:{x:0,z:0}}
execute if predicate theblackswitch:__version__/__patch__/rand/50 rotated ~ 0 positioned ^ ^ ^5 run return run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/summon with storage ancient_artifacts:player offset
function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/summon with storage ancient_artifacts:player offset