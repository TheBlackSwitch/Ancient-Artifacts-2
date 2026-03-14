##Check if the wave is cleared

# start a new wave when all mobs are dead
$execute unless entity @e[tag=sculk_spawned_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),distance=..40] run function ancient_artifacts:sculk_heart/waves/new

# Wave Finish
#do not repeat again so switch state
execute if score @s animation matches -1:
    scoreboard players set @s heart_state 3
    scoreboard players set @s animation 101