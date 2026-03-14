
# Score Countdown
execute if score @s waste_effect matches 1.. run scoreboard players remove @s waste_effect 1
execute if score @s waste_effect matches 0 run scoreboard players set @s waste_effect -1

# ---------------------
#   Overlay Animation
# ---------------------

# Buildup

for i in range(7):
    execute if score @s waste_effect matches (590 - i * 10):
        data merge storage theblackswitch:overlay {"texture":f"ancient_artifacts:item/overlay/artifact_waste/{i + 2}","id":"ancient_artifacts:artifact_waste"}
        function #theblackswitch:__version__/overlay/modify

# Dissipation
for i in range(7):
    execute if score @s waste_effect matches (60 - i * 10):
        data merge storage theblackswitch:overlay {"texture":f"ancient_artifacts:item/overlay/artifact_waste/{7 - i}","id":"ancient_artifacts:artifact_waste"}
        function #theblackswitch:__version__/overlay/modify

# Apply the effects
execute if score @s waste_effect matches 1..:
    attribute @s gravity modifier add artifact_waste -0.8 add_multiplied_total
    attribute @s safe_fall_distance modifier add artifact_waste 5 add_value

# Remove the effects
execute if score @s waste_effect matches -1:
    attribute @s gravity modifier remove artifact_waste
    attribute @s safe_fall_distance modifier remove artifact_waste

# Remove the overlay
execute if score @s waste_effect matches 1:
    data merge storage theblackswitch:overlay {"id":"ancient_artifacts:artifact_waste"}
    function #theblackswitch:__version__/overlay/remove