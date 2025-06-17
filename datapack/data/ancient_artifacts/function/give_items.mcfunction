playsound block.note_block.bell master @s ~ ~ ~ 1 1.6
tellraw @s [{"text": "[Ancient Artifacts]: "},{"text": "Gave you all items.","color": "green"}]
loot give @s loot ancient_artifacts:block/artifact_chest_overworld
loot give @s loot ancient_artifacts:item/artifact_upgrade
loot give @s loot ancient_artifacts:item/heavy_artifact_upgrade