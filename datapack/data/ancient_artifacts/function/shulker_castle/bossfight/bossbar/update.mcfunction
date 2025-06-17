function ancient_artifacts:shulker_castle/bossfight/bossbar/get_uuid

execute unless entity @e[type=shulker,tag=shulker_king,distance=..64] run return run function ancient_artifacts:shulker_castle/bossfight/bossbar/remove with storage ancient_artifacts:shulker_king

function ancient_artifacts:shulker_castle/bossfight/bossbar/show with storage ancient_artifacts:shulker_king

execute store result storage ancient_artifacts:shulker_king Health int 1 run data get entity @n[type=shulker,tag=shulker_king] Health
function ancient_artifacts:shulker_castle/bossfight/bossbar/set_value with storage ancient_artifacts:shulker_king