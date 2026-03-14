$execute store result storage ancient_artifacts:damage damage int $(multiplier) run attribute @s attack_damage get
scoreboard players operation #search tbs.ID = @s tbs.ID
$execute as $(entities) run function ancient_artifacts:utilities/damage_entity_by_search with storage ancient_artifacts:damage
