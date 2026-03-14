schedule function ancient_artifacts:creative_book/enable 1t append

execute unless entity @s[gamemode=creative] run return:
    playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
    tellraw @s [{"text":"[Ancient Artifacts]: ","color":"light_purple"},{"text":"You need to be in creative mode to use that!","color":"red"}]
    scoreboard players reset @s aa.creative_book

execute if predicate ancient_artifacts:is_on_designer_plot run return:
    playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.7
    tellraw @s [{"text":"[Ancient Artifacts]: ","color":"light_purple"},{"text":"You can't use that on here!","color":"red"}]
    scoreboard players reset @s aa.creative_book

execute if score @s aa.creative_book matches 1..4560000 run return:
    tellraw @s [{"text":"[Ancient Artifacts]: ","color":"light_purple"},{"text":"Successfully gave you a creative book!","color":"green"}]
    loot give @s loot ancient_artifacts:item/creative_book
    scoreboard players reset @s aa.creative_book

playsound entity.item.pickup master @s ~ ~ ~
playsound item.armor.equip_chain master @s ~ ~ ~

#-------------
#  Artifacts
#-------------


#-----OVERWORLD-----

# Common
execute if score @s aa.creative_book matches 4560001 run loot give @s loot ancient_artifacts:artifacts/overworld/poison_amulet
execute if score @s aa.creative_book matches 4560002 run loot give @s loot ancient_artifacts:artifacts/overworld/deactivation_crown
execute if score @s aa.creative_book matches 4560003 run loot give @s loot ancient_artifacts:artifacts/overworld/farmers_boots
# Uncommon
execute if score @s aa.creative_book matches 4560004 run loot give @s loot ancient_artifacts:artifacts/overworld/shockwave_bracelet
execute if score @s aa.creative_book matches 4560005 run loot give @s loot ancient_artifacts:artifacts/overworld/divers_boots
execute if score @s aa.creative_book matches 4560006 run loot give @s loot ancient_artifacts:artifacts/overworld/allies_amulet
# Rare
execute if score @s aa.creative_book matches 4560007 run loot give @s loot ancient_artifacts:artifacts/overworld/miners_crown
execute if score @s aa.creative_book matches 4560008 run loot give @s loot ancient_artifacts:artifacts/overworld/travelers_boots
execute if score @s aa.creative_book matches 4560009 run loot give @s loot ancient_artifacts:artifacts/overworld/reaching_bracelet
execute if score @s aa.creative_book matches 4560010 run loot give @s loot ancient_artifacts:artifacts/overworld/healing_amulet
# Unique
execute if score @s aa.creative_book matches 4560011 run loot give @s loot ancient_artifacts:artifacts/overworld/conductive_bracelet
execute if score @s aa.creative_book matches 4560012 run loot give @s loot ancient_artifacts:artifacts/overworld/final_shout_crown
execute if score @s aa.creative_book matches 4560013 run loot give @s loot ancient_artifacts:artifacts/overworld/explorers_boots


#-----NETHER-----

# Common
execute if score @s aa.creative_book matches 4560014 run loot give @s loot ancient_artifacts:artifacts/nether/burning_ring
execute if score @s aa.creative_book matches 4560015 run loot give @s loot ancient_artifacts:artifacts/nether/smelting_tiara
execute if score @s aa.creative_book matches 4560016 run loot give @s loot ancient_artifacts:artifacts/nether/tinkering_tiara
# Uncommon
execute if score @s aa.creative_book matches 4560017 run loot give @s loot ancient_artifacts:artifacts/nether/fireball_ring
execute if score @s aa.creative_book matches 4560018 run loot give @s loot ancient_artifacts:artifacts/nether/saturating_necklace
execute if score @s aa.creative_book matches 4560019 run loot give @s loot ancient_artifacts:artifacts/nether/builders_ring
# Rare
execute if score @s aa.creative_book matches 4560020 run loot give @s loot ancient_artifacts:artifacts/nether/thermal_tiara
execute if score @s aa.creative_book matches 4560021 run loot give @s loot ancient_artifacts:artifacts/nether/raging_ring
execute if score @s aa.creative_book matches 4560022 run loot give @s loot ancient_artifacts:artifacts/nether/cooling_boots
# Unique
execute if score @s aa.creative_book matches 4560023 run loot give @s loot ancient_artifacts:artifacts/nether/looting_tiara
execute if score @s aa.creative_book matches 4560024 run loot give @s loot ancient_artifacts:artifacts/nether/withering_necklace
execute if score @s aa.creative_book matches 4560025 run loot give @s loot ancient_artifacts:artifacts/nether/life_steal_necklace
execute if score @s aa.creative_book matches 4560026 run loot give @s loot ancient_artifacts:artifacts/nether/combo_boots


#-----DEEP-DARK-----

# Common
execute if score @s aa.creative_book matches 4560027 run loot give @s loot ancient_artifacts:artifacts/deep_dark/detecting_borla
execute if score @s aa.creative_book matches 4560028 run loot give @s loot ancient_artifacts:artifacts/deep_dark/sonic_crystal
execute if score @s aa.creative_book matches 4560029 run loot give @s loot ancient_artifacts:artifacts/deep_dark/borla_of_vision
# Uncommon
execute if score @s aa.creative_book matches 4560030 run loot give @s loot ancient_artifacts:artifacts/deep_dark/echoing_chain
execute if score @s aa.creative_book matches 4560031 run loot give @s loot ancient_artifacts:artifacts/deep_dark/echolocating_borla
execute if score @s aa.creative_book matches 4560032 run loot give @s loot ancient_artifacts:artifacts/deep_dark/recycling_crystal
execute if score @s aa.creative_book matches 4560033 run loot give @s loot ancient_artifacts:artifacts/deep_dark/shrinking_anklet
# Rare
execute if score @s aa.creative_book matches 4560034 run loot give @s loot ancient_artifacts:artifacts/deep_dark/beefy_crystal
execute if score @s aa.creative_book matches 4560035 run loot give @s loot ancient_artifacts:artifacts/deep_dark/strengthening_anklet
execute if score @s aa.creative_book matches 4560036 run loot give @s loot ancient_artifacts:artifacts/deep_dark/bulky_chain
# Unique
execute if score @s aa.creative_book matches 4560038 run loot give @s loot ancient_artifacts:artifacts/deep_dark/anklet_of_peace
execute if score @s aa.creative_book matches 4560039 run loot give @s loot ancient_artifacts:artifacts/deep_dark/experienced_chain
execute if score @s aa.creative_book matches 4560040 run loot give @s loot ancient_artifacts:artifacts/deep_dark/recovery_anklet
execute if score @s aa.creative_book matches 4560041 run loot give @s loot ancient_artifacts:artifacts/deep_dark/necromancy_anklet


#-----END-----

# Common
execute if score @s aa.creative_book matches 4560042 run loot give @s loot ancient_artifacts:artifacts/end/slowing_circlet
execute if score @s aa.creative_book matches 4560043 run loot give @s loot ancient_artifacts:artifacts/end/dragons_breath_circlet
execute if score @s aa.creative_book matches 4560044 run loot give @s loot ancient_artifacts:artifacts/end/knockback_watch
# Uncommon
execute if score @s aa.creative_book matches 4560045 run loot give @s loot ancient_artifacts:artifacts/end/attractive_toe_ring
execute if score @s aa.creative_book matches 4560046 run loot give @s loot ancient_artifacts:artifacts/end/gravitation_toe_ring
execute if score @s aa.creative_book matches 4560047 run loot give @s loot ancient_artifacts:artifacts/end/pulse_watch
# Rare
execute if score @s aa.creative_book matches 4560048 run loot give @s loot ancient_artifacts:artifacts/end/levitation_medal
execute if score @s aa.creative_book matches 4560049 run loot give @s loot ancient_artifacts:artifacts/end/radiant_watch
execute if score @s aa.creative_book matches 4560050 run loot give @s loot ancient_artifacts:artifacts/end/deflecting_circlet
execute if score @s aa.creative_book matches 4560051 run loot give @s loot ancient_artifacts:artifacts/end/landing_toe_ring
# Unique
execute if score @s aa.creative_book matches 4560052 run loot give @s loot ancient_artifacts:artifacts/end/voiding_medal
execute if score @s aa.creative_book matches 4560053 run loot give @s loot ancient_artifacts:artifacts/end/storing_circlet
# Divine
execute if score @s aa.creative_book matches 4560054 run loot give @s loot ancient_artifacts:artifacts/end/focus_medal

#----------------
#  Normal Items
#----------------

#essence
execute if score @s aa.creative_book matches 4560055 run loot give @s loot ancient_artifacts:item/essence/common
execute if score @s aa.creative_book matches 4560056 run loot give @s loot ancient_artifacts:item/essence/uncommon
execute if score @s aa.creative_book matches 4560057 run loot give @s loot ancient_artifacts:item/essence/rare
execute if score @s aa.creative_book matches 4560058 run loot give @s loot ancient_artifacts:item/essence/unique

#template
execute if score @s aa.creative_book matches 4560059 run loot give @s loot ancient_artifacts:item/template/common
execute if score @s aa.creative_book matches 4560060 run loot give @s loot ancient_artifacts:item/template/uncommon
execute if score @s aa.creative_book matches 4560061 run loot give @s loot ancient_artifacts:item/template/rare
execute if score @s aa.creative_book matches 4560062 run loot give @s loot ancient_artifacts:item/template/unique

#artifact blend
execute if score @s aa.creative_book matches 4560063 run loot give @s loot ancient_artifacts:item/artifact_blend

#Compounds
execute if score @s aa.creative_book matches 4560064 run loot give @s loot ancient_artifacts:item/quartz_compound
execute if score @s aa.creative_book matches 4560065 run loot give @s loot ancient_artifacts:item/chorus_compound
execute if score @s aa.creative_book matches 4560066 run loot give @s loot ancient_artifacts:item/echoing_compound

#Upgrade
execute if score @s aa.creative_book matches 4560067 run loot give @s loot ancient_artifacts:item/artifact_upgrade
execute if score @s aa.creative_book matches 4560068 run loot give @s loot ancient_artifacts:item/heavy_artifact_upgrade

#Waste
execute if score @s aa.creative_book matches 4560069 run loot give @s loot ancient_artifacts:item/artifact_waste

#Dungeon stuff
execute if score @s aa.creative_book matches 4560070 run loot give @s loot ancient_artifacts:item/dungeon_catalog
execute if score @s aa.creative_book matches 4560071 run loot give @s loot ancient_artifacts:item/dungeon_map

#Echo chunk
execute if score @s aa.creative_book matches 4560072 run loot give @s loot ancient_artifacts:item/echo_chunk

#Expansion Stars
execute if score @s aa.creative_book matches 4560073 run loot give @s loot ancient_artifacts:item/expansion_star
execute if score @s aa.creative_book matches 4560074 run loot give @s loot ancient_artifacts:item/ethernal_expansion_star

#Manuals
execute if score @s aa.creative_book matches 4560075 run loot give @s loot ancient_artifacts:item/manual/overworld
execute if score @s aa.creative_book matches 4560076 run loot give @s loot ancient_artifacts:item/manual/deep_dark
execute if score @s aa.creative_book matches 4560077 run loot give @s loot ancient_artifacts:item/manual/nether
execute if score @s aa.creative_book matches 4560078 run loot give @s loot ancient_artifacts:item/manual/end
execute if score @s aa.creative_book matches 4560103 run loot give @s loot ancient_artifacts:item/manual/focus

#Mystery Boxes
execute if score @s aa.creative_book matches 4560079 run loot give @s loot ancient_artifacts:item/mystery_box/overworld
execute if score @s aa.creative_book matches 4560080 run loot give @s loot ancient_artifacts:item/mystery_box/deep_dark
execute if score @s aa.creative_book matches 4560081 run loot give @s loot ancient_artifacts:item/mystery_box/nether
execute if score @s aa.creative_book matches 4560082 run loot give @s loot ancient_artifacts:item/mystery_box/end
execute if score @s aa.creative_book matches 4560083 run loot give @s loot ancient_artifacts:item/mystery_box/exploration_box

#Ancient hammer
execute if score @s aa.creative_book matches 4560084 run loot give @s loot ancient_artifacts:item/ancient_hammer

#Pachment
execute if score @s aa.creative_book matches 4560085 run loot give @s loot ancient_artifacts:item/ancient_parchment

#Music Discs
execute if score @s aa.creative_book matches 4560086 run loot give @s loot ancient_artifacts:item/music_disc/alpha_centuari
execute if score @s aa.creative_book matches 4560087 run loot give @s loot ancient_artifacts:item/music_disc/battle_of_the_creek
execute if score @s aa.creative_book matches 4560088 run loot give @s loot ancient_artifacts:item/music_disc/forest
execute if score @s aa.creative_book matches 4560089 run loot give @s loot ancient_artifacts:item/music_disc/neverland
execute if score @s aa.creative_book matches 4560090 run loot give @s loot ancient_artifacts:item/music_disc/progress
execute if score @s aa.creative_book matches 4560091 run loot give @s loot ancient_artifacts:item/music_disc/retrograde
execute if score @s aa.creative_book matches 4560092 run loot give @s loot ancient_artifacts:item/music_disc/sleepless_city
execute if score @s aa.creative_book matches 4560093 run loot give @s loot ancient_artifacts:item/music_disc/the_dark_side_of_me
execute if score @s aa.creative_book matches 4560094 run loot give @s loot ancient_artifacts:item/music_disc/welcome_to_chaos

#---------------
#  Block Items
#---------------

execute if score @s aa.creative_book matches 4560095 run loot give @s loot ancient_artifacts:block/ancient_altar
execute if score @s aa.creative_book matches 4560096 run loot give @s loot ancient_artifacts:block/ancient_stone
execute if score @s aa.creative_book matches 4560097 run loot give @s loot ancient_artifacts:block/artifact_cauldron
execute if score @s aa.creative_book matches 4560098 run loot give @s loot ancient_artifacts:block/artifact_chest_overworld
execute if score @s aa.creative_book matches 4560099 run loot give @s loot ancient_artifacts:block/artifact_chest_deep_dark
execute if score @s aa.creative_book matches 4560100 run loot give @s loot ancient_artifacts:block/artifact_chest_nether
execute if score @s aa.creative_book matches 4560101 run loot give @s loot ancient_artifacts:block/artifact_chest_end
execute if score @s aa.creative_book matches 4560102 run loot give @s loot ancient_artifacts:block/artifact_chest_obsidian

scoreboard players reset @s aa.creative_book
