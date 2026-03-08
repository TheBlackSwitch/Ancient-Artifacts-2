execute unless data storage ancient_artifacts:player recover_inv[0] run return 1
data modify storage ancient_artifacts:player current_item set from storage ancient_artifacts:player recover_inv[0]

execute unless data storage ancient_artifacts:player current_item.components run data modify storage ancient_artifacts:player current_item.components set value {}
execute if function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/check align xyz run function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/kill with storage ancient_artifacts:player current_item

data remove storage ancient_artifacts:player recover_inv[0]
function ancient_artifacts:artifacts/deep_dark/recovery_anklet/kill_items/loop