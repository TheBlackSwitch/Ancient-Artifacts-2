## This runs when the player first joins


# Allow the player to use the creative book trigger scoreboard
scoreboard players enable @s aa.creative_book

# Init the artifact hotbar
scoreboard players set @s artifact_slot_count 2
scoreboard players set @s artifact_slot_1 0
scoreboard players set @s artifact_slot_2 0
scoreboard players set @s artifact_slot_3 0

# The luck scoreboard (used in looting tiara)
scoreboard players set @s luck 0