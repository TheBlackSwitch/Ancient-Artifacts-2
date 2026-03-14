advancement revoke @s only ancient_artifacts:trigger/artifact_waste
effect give @s strength 20 0 false
effect give @s speed 20 4 false
effect give @s jump_boost 20 1 false
effect give @s hunger 30 2 false
effect give @s nausea 30 0 false
scoreboard players set @s waste_effect 600
data merge storage theblackswitch:overlay {"texture":"ancient_artifacts:item/overlay/artifact_waste/1","id":"ancient_artifacts:artifact_waste","priority":"conditional"}
function #theblackswitch:__version__/overlay/add