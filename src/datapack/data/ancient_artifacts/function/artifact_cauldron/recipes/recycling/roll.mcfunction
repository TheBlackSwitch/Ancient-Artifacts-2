$execute store result score @s random run random value 1..$(total)
$execute if score @s random matches 1..$(loot_end) run data modify entity @s data.roll set value "loot"
$execute if score @s random matches $(common_start)..$(common_end) run data modify entity @s data.roll set value "common"
$execute if score @s random matches $(uncommon_start)..$(uncommon_end) run data modify entity @s data.roll set value "uncommon"
$execute if score @s random matches $(rare_start)..$(rare_end) run data modify entity @s data.roll set value "rare"
$execute if score @s random matches $(unique_start)..$(total) run data modify entity @s data.roll set value "unique"

execute if score .lSmall temp matches 3.. if data entity @s {data:{roll:"loot"}} run return run function ancient_artifacts:artifact_cauldron/recipes/recycling/roll with entity @s data.chances
execute if score .cSmall temp matches 3.. if data entity @s {data:{roll:"common"}} run return run function ancient_artifacts:artifact_cauldron/recipes/recycling/roll with entity @s data.chances
execute if score .uSmall temp matches 3.. if data entity @s {data:{roll:"uncommon"}} run return run function ancient_artifacts:artifact_cauldron/recipes/recycling/roll with entity @s data.chances
execute if score .rSmall temp matches 3.. if data entity @s {data:{roll:"rare"}} run return run function ancient_artifacts:artifact_cauldron/recipes/recycling/roll with entity @s data.chances
execute if score .qSmall temp matches 3.. if data entity @s {data:{roll:"unique"}} run return run function ancient_artifacts:artifact_cauldron/recipes/recycling/roll with entity @s data.chances