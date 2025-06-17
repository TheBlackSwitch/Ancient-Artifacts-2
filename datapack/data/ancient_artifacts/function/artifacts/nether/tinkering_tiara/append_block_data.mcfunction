execute if data block ~ ~ ~ bees[1] unless data block ~ ~ ~ bees[2] run data modify storage ancient_artifacts:block text append value [{"text":" Bees: ","color":"gray"},{"text":"1","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ bees[2] unless data block ~ ~ ~ bees[3] run data modify storage ancient_artifacts:block text append value [{"text":" Bees: ","color":"gray"},{"text":"2","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ bees[3] run data modify storage ancient_artifacts:block text append value [{"text":" Bees: ","color":"gray"},{"text":"3","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ front_text run data modify storage ancient_artifacts:block text append value [{"text":" Front Text: ","color":"gray"},{"nbt":"front_text.messages","block":"~ ~ ~","color":"yellow"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ back_text run data modify storage ancient_artifacts:block text append value [{"text":" Back Text: ","color":"gray"},{"nbt":"front_text.messages","block":"~ ~ ~","color":"yellow"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ {is_waxed:0b} run data modify storage ancient_artifacts:block text append value [{"text":" Is Waxed: ","color":"gray"},{"text":"false","block":"~ ~ ~","color":"red"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ {is_waxed:1b} run data modify storage ancient_artifacts:block text append value [{"text":" Is Waxed: ","color":"gray"},{"text":"true","block":"~ ~ ~","color":"green"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ last_vibration_frequency run data modify storage ancient_artifacts:block text append value [{"text":" Last Vibration: ","color":"gray"},{"nbt":"last_vibration_frequency","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ warning_level run data modify storage ancient_artifacts:block text append value [{"text":" Warning Level: ","color":"gray"},{"nbt":"warning_level","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ patterns run data modify storage ancient_artifacts:block text append value [{"text":" Patterns: ","color":"gray"},{"nbt":"patterns","block":"~ ~ ~","color":"aqua"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ TransferCooldown run data modify storage ancient_artifacts:block text append value [{"text":" Cooldown: ","color":"gray"},{"nbt":"TransferCooldown","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute store result storage ancient_artifacts:block nbr int 1 if data block ~ ~ ~ Items[]
execute if data block ~ ~ ~ Items run data modify storage ancient_artifacts:block property set value "Item Stack Count"
execute if data block ~ ~ ~ Items run function ancient_artifacts:artifacts/nether/tinkering_tiara/append_nbr with storage ancient_artifacts:block

execute if data block ~ ~ ~ BurnTime run data modify storage ancient_artifacts:block text append value [{"text":" Burn Time: ","color":"gray"},{"nbt":"BurnTime","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ Fuel run data modify storage ancient_artifacts:block text append value [{"text":" Fuel: ","color":"gray"},{"nbt":"Fuel","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ BrewTime run data modify storage ancient_artifacts:block text append value [{"text":" Brew Time: ","color":"gray"},{"nbt":"BrewTime","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ CookingTimes run data modify storage ancient_artifacts:block text append value [{"text":" Cooking SE: ","color":"gray"},{"nbt":"CookingTimes[0]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ CookingTimes run data modify storage ancient_artifacts:block text append value [{"text":" Cooking SW: ","color":"gray"},{"nbt":"CookingTimes[1]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ CookingTimes run data modify storage ancient_artifacts:block text append value [{"text":" Cooking NW: ","color":"gray"},{"nbt":"CookingTimes[2]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ CookingTimes run data modify storage ancient_artifacts:block text append value [{"text":" Cooking NE: ","color":"gray"},{"nbt":"CookingTimes[3]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ Page run data modify storage ancient_artifacts:block text append value [{"text":" Current Page: ","color":"gray"},{"nbt":"Page","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ disabled_slots[0] run data modify storage ancient_artifacts:block text append value [{"text":" Disabled Slots: ","color":"gray"},{"nbt":"disabled_slots","block":"~ ~ ~","color":"aqua"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ Delay run data modify storage ancient_artifacts:block text append value [{"text":" Use the datapack ","color":"yellow"},{"text":"confispawn","block":"~ ~ ~","color":"blue"},{"text":" to get more info"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ primary_effect run data modify storage ancient_artifacts:block text append value [{"text":" Effect1: ","color":"gray"},{"nbt":"primary_effect","block":"~ ~ ~","color":"yellow"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ secondary_effect run data modify storage ancient_artifacts:block text append value [{"text":" Effect2: ","color":"gray"},{"nbt":"secondary_effect","block":"~ ~ ~","color":"yellow"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ Levels run data modify storage ancient_artifacts:block text append value [{"text":" Levels: ","color":"gray"},{"nbt":"Levels","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ RecordItem run data modify storage ancient_artifacts:block text append value [{"text":" Disc: ","color":"gray"},{"nbt":"RecordItem.id","block":"~ ~ ~","color":"yellow"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ ticks_since_song_started run data modify storage ancient_artifacts:block text append value [{"text":" Ticks Since Start: ","color":"gray"},{"nbt":"ticks_since_song_started","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ exit_portal run data modify storage ancient_artifacts:block text append value [{"text":" To X: ","color":"gray"},{"nbt":"exit_portal[0]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ exit_portal run data modify storage ancient_artifacts:block text append value [{"text":" To Y: ","color":"gray"},{"nbt":"exit_portal[1]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]
execute if data block ~ ~ ~ exit_portal run data modify storage ancient_artifacts:block text append value [{"text":" To Z: ","color":"gray"},{"nbt":"exit_portal[2]","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]

execute if data block ~ ~ ~ OutputSignal run data modify storage ancient_artifacts:block text append value [{"text":" Signal Strength: ","color":"gray"},{"nbt":"OutputSignal","block":"~ ~ ~","color":"blue"},{"text": " |","color":"gray"}]