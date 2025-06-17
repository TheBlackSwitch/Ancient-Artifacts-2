$data modify storage ancient_artifacts:manual player_data.unlocked.artifact."$(dim)" append value {id:"$(id)"}

##Unlock message / effects
playsound minecraft:entity.player.levelup master @s ~ ~ ~
playsound minecraft:ui.toast.out master @s ~ ~ ~
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~

$execute store result score @s artifacts.$(dim) if data storage ancient_artifacts:manual player_data.unlocked.artifact."$(dim)"[]

tag @s add unlocker
##Unlocker
tellraw @s [{"text":"You found ","color":"green"},{"nbt":"current_item.name","storage": "ancient_artifacts:manual","interpret": true},{"text": "! Visit your manual","color":"green"},{"text": "﹛﹖﹜","color": "red","bold": true,"hover_event": {"action": "show_text","value": {"text": "An artifact manual is a craftable book which contains all knowledge about your artifacts. Visit the recipe book for more info.","color":"light_purple"}}},{"text": " to see what is does!","color": "green"}]
##Other Players
tellraw @a[tag=!unlocker] [{"text": "","color":"green"},{"selector":"@s"},{"text":" found ","color":"light_purple","bold": true},{"nbt":"current_item.name","storage": "ancient_artifacts:manual","interpret": true},{"text":"!"}]
tag @s remove unlocker
