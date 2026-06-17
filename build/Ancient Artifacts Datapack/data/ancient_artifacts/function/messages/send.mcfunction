scoreboard players set @s aa.message_timeout 0
scoreboard players set #message_sound temp 0
execute unless entity @s[tag=aa.had_messages.tick_perm] unless function ancient_artifacts:utilities/tick_speed/is_enabled run function ancient_artifacts:messages/send/tick_perm
execute unless entity @s[tag=aa.had_messages.vanilla_tweaks_graves] if function ancient_artifacts:__compat__/graves_vanilla_tweaks/is_enabled run function ancient_artifacts:messages/send/graves_compat
execute if score #message_sound temp matches 1 at @s run function ancient_artifacts:messages/send/nested_execute_0
