##No interaction if artifracture is busy
execute if score @n[type=marker,tag=ancient_altar,tag=control] animation matches 1.. run return fail

##Artifact
#place

execute on target if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{artifact:1b}}}}] unless data entity @e[tag=ancient_altar,tag=control,limit=1,sort=nearest] data.Item run function ancient_artifacts:ancient_altar/interact/set_item
#replace
execute on target if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{artifact:1b}}}}] if data entity @e[tag=ancient_altar,tag=control,limit=1,sort=nearest] data.Item run function ancient_artifacts:ancient_altar/interact/replace_item

##Empty Hand
execute on target unless entity @s[nbt={SelectedItem:{}}] if data entity @e[tag=ancient_altar,tag=control,limit=1,sort=nearest] data.Item run function ancient_artifacts:ancient_altar/interact/retrieve_item
execute as @e[tag=ancient_altar,tag=interact,dy=0] run data remove entity @s interaction