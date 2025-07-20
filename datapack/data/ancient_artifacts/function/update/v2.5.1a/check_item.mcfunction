scoreboard players set .version temp 0
$execute store result score .version temp run data get entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_data"."aa-version"
execute if score .version temp matches 251.. run return fail

$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"poison_amulet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/poison_amulet
    
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"deactivation_crown"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/deactivation_crown
    
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"farmers_boots"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/farmers_boots
    
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"shockwave_bracelet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/shockwave_bracelet

$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"divers_boots"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/divers_boots  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"allies_amulet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/allies_amulet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"miners_crown"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/miners_crown  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"travelers_boots"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/travelers_boots  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"reaching_bracelet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/reaching_bracelet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"healing_amulet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/healing_amulet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"conductive_bracelet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/conductive_bracelet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"final_shout_crown"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/final_shout_crown  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"explorers_boots"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/overworld/explorers_boots  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"burning_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/burning_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"smelting_tiara"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/smelting_tiara  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"tinkering_tiara"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/tinkering_tiara  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"fireball_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/fireball_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"saturating_necklace"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/saturating_necklace  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"builders_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/builders_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"thermal_tiara"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/thermal_tiara  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"raging_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/raging_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"cooling_boots"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/cooling_boots  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"looting_tiara"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/looting_tiara  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"withering_necklace"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/withering_necklace  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"life_steal_necklace"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/life_steal_necklace  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"combo_boots"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/nether/combo_boots  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"detecting_borla"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/detecting_borla  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"sonic_crystal"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/sonic_crystal  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"borla_of_vision"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/borla_of_vision  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"echoing_chain"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/echoing_chain  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"echolocating_borla"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/echolocating_borla  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"recycling_crystal"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/recycling_crystal  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"shrinking_anklet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/beefy_crystal  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"strengthening_anklet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/strengthening_anklet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"bulky_chain"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/bulky_chain  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"anklet_of_peace"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/anklet_of_peace  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"experienced_chain"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/experienced_chain  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"recovery_anklet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/recovery_anklet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"necromancy_anklet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/deep_dark/necromancy_anklet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"slowing_circlet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/slowing_circlet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"dragons_breath_circlet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/dragons_breath_circlet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"knockback_watch"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/knockback_watch  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"attractive_toe_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/attractive_toe_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"gravitation_toe_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/gravitation_toe_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"pulse_watch"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/pulse_watch  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"levitation_medal"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/levitation_medal  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"radiant_watch"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/radiant_watch  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"deflecting_circlet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/deflecting_circlet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"landing_toe_ring"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/landing_toe_ring  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"voiding_medal"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/voiding_medal  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"storing_circlet"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/storing_circlet  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{data:{id:"focus_medal"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:artifacts/end/focus_medal  




      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"manual":true,data:{dim:"overworld"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/manual/overworld  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"manual":true,data:{dim:"deep_dark"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/manual/deep_dark  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"manual":true,data:{dim:"nether"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/manual/nether  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"manual":true,data:{dim:"end"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/manual/end  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"manual":true,data:{dim:"focus"}}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/manual/focus  




      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"mystery_box":true,"type":"overworld"}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/mystery_box/overworld  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"mystery_box":true,"type":"deep_dark"}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/mystery_box/deep_dark  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"mystery_box":true,"type":"nether"}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/mystery_box/nether  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"mystery_box":true,"type":"end"}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/mystery_box/end  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"mystery_box":true,"type":"explorers_boots"}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/mystery_box/exploration_box 




      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"ancient_hammer":true}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/ancient_hammer

$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"parchment":true}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/ancient_parchment  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"artifact_upgrade":true,"heavy":false}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/artifact_upgrade  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"artifact_upgrade":true,"heavy":true}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/heavy_artifact_upgrade  
      
$execute if items entity @s container.$(slot) warped_fungus_on_a_stick[minecraft:custom_data~{"dungeon_catalog":true}] run return run \
    loot replace entity @s container.$(slot) loot ancient_artifacts:item/dungeon_catalog