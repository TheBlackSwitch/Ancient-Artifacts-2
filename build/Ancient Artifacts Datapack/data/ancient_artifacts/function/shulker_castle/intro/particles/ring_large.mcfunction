particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 2} ^ ^ ^5
particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 2} ^ ^ ^-5
rotate @s ~3 ~
particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 2} ^ ^ ^5
particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 2} ^ ^ ^-5
rotate @s ~3 ~
particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 2} ^ ^ ^5
particle minecraft:dust{color: [1.0d, 0.3d, 1.0d], scale: 2} ^ ^ ^-5
rotate @s ~3 ~
scoreboard players add @s lifetime 1
execute if score @s lifetime matches 387 run kill @s
