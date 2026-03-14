
# Unlock this artifact for this player
$data modify storage ancient_artifacts:manual player_data.unlocked.artifact."$(dim)" append value {id:"$(id)"}

# Unlock message / effects
playsound minecraft:entity.player.levelup master @s ~ ~ ~
playsound minecraft:ui.toast.out master @s ~ ~ ~
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~

# Increase the artifact count
$execute store result score @s artifacts.$(dim) if data storage ancient_artifacts:manual player_data.unlocked.artifact."$(dim)"[]

# Grab the name of the first artifact (in the player's inventory) with the same rarity and id
data remove storage ancient_artifacts:manual names
$data modify storage ancient_artifacts:manual names append from entity @s Inventory[{"components":{"minecraft:custom_data":{"artifact":true,"data":{"id":"$(id)","rarity":$(rarity)b}}}}].components."minecraft:custom_name"
data modify storage ancient_artifacts:manual currArtifact.name set from storage ancient_artifacts:manual names[0]

# Chat message
tag @s add unlocker

# Unlocker
tellraw @s [{"text":"You found ","color":"green"},{"nbt":"currArtifact.name","storage": "ancient_artifacts:manual","interpret": true},{"text": "! Visit your manual","color":"green"},{"text": "﹛﹖﹜","color": "red","bold": true,"hover_event": {"action": "show_text","value": {"text": "The artifact manual is a craftable book which contains all knowledge about your artifacts. Visit the recipe book for more info.","color":"light_purple"}}},{"text": " to see what it does!","color": "green"}]

# Other Players
tellraw @a[tag=!unlocker] [{"text": "","color":"green"},{"selector":"@s"},{"text":" found ","color":"light_purple","bold": true},{"nbt":"currArtifact.name","storage": "ancient_artifacts:manual","interpret": true},{"text":"!"}]

tag @s remove unlocker
