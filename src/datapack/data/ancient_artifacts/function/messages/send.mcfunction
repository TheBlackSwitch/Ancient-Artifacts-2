
# Reset the score for next update maybe
scoreboard players set @s aa.message_timeout 0
scoreboard players set #message_sound temp 0

#-------------------------------------------------------
## Run the messages
#-------------------------------------------------------

# message for the tick permission
execute unless function ancient_artifacts:utilities/tick_speed/is_enabled run function ancient_artifacts:messages/send/tick_perm

# message for graves compat
execute if function ancient_artifacts:__compat__/graves_vanilla_tweaks/is_enabled run function ancient_artifacts:messages/send/graves_compat

#-------------------------------------------------------
## SFX
#-------------------------------------------------------

execute if score #message_sound temp matches 1 at @s:
    playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
    playsound minecraft:ui.toast.out master @s ~ ~ ~ 10 1
    playsound minecraft:ui.toast.out master @s ~ ~ ~ 10 1


# tag this player as done for this version
tag @s add aa.had_messages.__pack-version__
