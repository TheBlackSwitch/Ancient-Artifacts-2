for x in range(5):
    for y in range(5):
        for z in range(5):
            pos_x = x - 2
            pos_y = y - 2
            pos_z = z - 2
            execute positioned ~pos_x ~pos_y ~pos_z run function ancient_artifacts:artifacts/nether/fireball_ring/fire

kill @s