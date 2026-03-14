## Try to generate a random dimension for the parchment

# Gen a random number
execute store result score #rand temp run random value 1..4

# ===== 1: Overworld =====
execute if score #rand temp matches 1 run return run data modify storage ancient_artifacts:parchment selected_dim set value "overworld"

# ===== 2: Nether =====
execute if score #rand temp matches 2 if score .reached_nether tbs.server_data matches 1 run return:
    data modify storage ancient_artifacts:parchment selected_dim set value "nether"

# ===== 3: Deep Dark =====
execute if score #rand temp matches 3 if score .reached_deep_dark tbs.server_data matches 1 run return:
    data modify storage ancient_artifacts:parchment selected_dim set value "deep_dark"

# ===== 4: End =====
execute if score #rand temp matches 4 if score .reached_end tbs.server_data matches 1 run return:
    data modify storage ancient_artifacts:parchment selected_dim set value "end"


scoreboard players add #loop_count temp 1

execute unless score #loop_count temp matches 1000.. run return run function ancient_artifacts:ancient_parchment/generate/gen_dim
data modify storage ancient_artifacts:parchment selected_dim set value "overworld"