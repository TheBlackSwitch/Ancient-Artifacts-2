
tellraw @s [{"text":"[Artifact Golem]: ","color":"light_purple"},{"text":"Muwhahahaha, You think I, the invincible, am vulnerable to your stupid weapons?","color":"dark_red"}]
advancement grant @s only ancient_artifacts:main/hit_artifact_golem
item modify entity @s weapon.mainhand ancient_artifacts:damage
function ancient_artifacts:rand_pitch {ID:'minecraft:entity.item.break',source:'player',target:'@a',pos:'~ ~ ~',vol:1,minVol:1,range:'95..105'}
data modify storage ancient_artifacts:item item set from entity @s SelectedItem.id
execute at @s run function ancient_artifacts:artifact_golem/defence/damage_particle with storage ancient_artifacts:item

execute if predicate ancient_artifacts:is_item_dead run item replace entity @s weapon.mainhand with air