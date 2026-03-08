# Loop through a cube with a certain scale and check for lava to replace
SCALE = 1

BLOCK_COUNT = pow(SCALE * 2 + 1, 3)

curr_block = 0
for x in range(SCALE * 2 + 1):
    for y in range(3):
        for z in range(SCALE * 2 + 1):
            
            pos_x = x - SCALE
            pos_y = y - 2
            pos_z = z - SCALE

            execute positioned ~pos_x ~pos_y ~pos_z if block ~ ~ ~ lava[level=0] run function ancient_artifacts:artifacts/nether/cooling_boots/place
            curr_block += 1