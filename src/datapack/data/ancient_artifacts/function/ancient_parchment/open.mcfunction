
# Generate the parchment if needed
execute unless data entity @s SelectedItem.components."minecraft:custom_data".recipe run function ancient_artifacts:ancient_parchment/generate/init

# open the parchment
execute store result score @s parchment_slot run data get entity @s SelectedItemSlot
scoreboard players set @s parchment_open -1

item modify entity @s weapon.mainhand ancient_artifacts:parchment/open

# Unlock the advancement
execute if entity @s[tag=has_template] run advancement grant @s only ancient_artifacts:main/obtain_parchment

# Sound effects
playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 0.8
playsound minecraft:item.book.put player @a
particle minecraft:dust{color:[0.8, 0.8, 0.5],scale:1} ^ ^1.3 ^1 0.5 0.5 0.5 1 15 force @s

# Open the overlay
data merge storage theblackswitch:overlay {"texture":"ancient_artifacts:item/overlay/darken","id":"ancient_artifacts:parchment_darken","priority":"conditional"}
function #theblackswitch:__version__/overlay/add

# Show the parchment
function ancient_artifacts:ancient_parchment/show/tick