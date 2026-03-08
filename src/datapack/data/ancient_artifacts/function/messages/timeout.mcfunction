scoreboard players add @s aa.message_timeout 1


# Send the message after 2 mins of online time
execute if score @s aa.message_timeout matches 2400.. run function ancient_artifacts:messages/send