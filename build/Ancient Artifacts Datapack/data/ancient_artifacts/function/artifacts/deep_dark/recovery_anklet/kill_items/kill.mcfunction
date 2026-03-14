$execute unless data storage ancient_artifacts:player {current_item:{components:{}}} run kill @n[type=item,dy=2,nbt={Item:{id:"$(id)",count:$(count),components:$(components)}}]
$execute if data storage ancient_artifacts:player {current_item:{components:{}}} run kill @n[type=item,dy=2,nbt={Item:{id:"$(id)",count:$(count)}}]
