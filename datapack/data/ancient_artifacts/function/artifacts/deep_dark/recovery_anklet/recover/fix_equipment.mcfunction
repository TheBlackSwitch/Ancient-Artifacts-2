execute if data storage ancient_artifacts:player recovery_equip.head run data modify storage ancient_artifacts:player recovery_equip.head.slot set value "armor.head"
execute if data storage ancient_artifacts:player recovery_equip.chest run data modify storage ancient_artifacts:player recovery_equip.chest.slot set value "armor.chest"
execute if data storage ancient_artifacts:player recovery_equip.legs run data modify storage ancient_artifacts:player recovery_equip.legs.slot set value "armor.legs"
execute if data storage ancient_artifacts:player recovery_equip.feet run data modify storage ancient_artifacts:player recovery_equip.feet.slot set value "armor.feet"
execute if data storage ancient_artifacts:player recovery_equip.offhand run data modify storage ancient_artifacts:player recovery_equip.offhand.slot set value "weapon.offhand"

execute if data storage ancient_artifacts:player recovery_equip.head unless data storage ancient_artifacts:player recovery_equip.head.components run data modify storage ancient_artifacts:player recovery_equip.head.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.chest unless data storage ancient_artifacts:player recovery_equip.chest.components run data modify storage ancient_artifacts:player recovery_equip.chest.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.legs unless data storage ancient_artifacts:player recovery_equip.legs.components run data modify storage ancient_artifacts:player recovery_equip.legs.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.feet unless data storage ancient_artifacts:player recovery_equip.feet.components run data modify storage ancient_artifacts:player recovery_equip.feet.components set value {}
execute if data storage ancient_artifacts:player recovery_equip.offhand unless data storage ancient_artifacts:player recovery_equip.offhand.components run data modify storage ancient_artifacts:player recovery_equip.offhand.components set value {}

function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/replace_equipment with storage ancient_artifacts:player recovery_equip.head
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/replace_equipment with storage ancient_artifacts:player recovery_equip.chest
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/replace_equipment with storage ancient_artifacts:player recovery_equip.legs
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/replace_equipment with storage ancient_artifacts:player recovery_equip.feet
execute if entity @s[tag=recovery_2] run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/replace_equipment with storage ancient_artifacts:player recovery_equip.offhand