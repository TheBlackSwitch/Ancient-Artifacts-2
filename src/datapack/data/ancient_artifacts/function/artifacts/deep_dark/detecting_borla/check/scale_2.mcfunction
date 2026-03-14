# Loop through a cube with a certain scale and check if the block is an ore
import math

SCALE = 2

BLOCK_COUNT = pow(SCALE * 2 + 1, 3)

curr_block = 0
for x in range(SCALE * 2 + 1):
    for y in range(SCALE * 2 + 1):
        for z in range(SCALE * 2 + 1):
            
            check_tick = math.floor(curr_block / BLOCK_COUNT * 9) + 1
            pos_x = x - SCALE
            pos_y = y - SCALE
            pos_z = z - SCALE

            execute if score #10 tbs.slow_tick matches check_tick positioned ~pos_x ~pos_y ~pos_z if block ~ ~ ~ #ancient_artifacts:ores run function ancient_artifacts:artifacts/deep_dark/detecting_borla/check/block
            curr_block += 1