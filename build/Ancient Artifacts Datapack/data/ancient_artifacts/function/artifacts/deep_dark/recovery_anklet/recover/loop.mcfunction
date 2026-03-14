execute unless data storage ancient_artifacts:player recovery_inv[-1] run return 1
data modify storage ancient_artifacts:player current_recover set from storage ancient_artifacts:player recovery_inv[0]
execute unless data storage ancient_artifacts:player current_recover.components run data modify storage ancient_artifacts:player current_recover.components set value {}
execute store success score .success temp run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/replace_item with storage ancient_artifacts:player current_recover
execute if score .success temp matches 1 run tag @s add recovered_item
data remove storage ancient_artifacts:player recovery_inv[0]
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/recover/loop
