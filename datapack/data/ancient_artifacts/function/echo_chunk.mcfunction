execute store result score .echo_chunk_count temp if items entity @s container.* echo_shard[minecraft:custom_data~{echo_chunk:true}]
execute if score .echo_chunk_count temp matches 1 run effect give @s slowness 1 0 true
execute if score .echo_chunk_count temp matches 2 run effect give @s slowness 1 1 true
execute if score .echo_chunk_count temp matches 3 run effect give @s slowness 1 2 true
execute if score .echo_chunk_count temp matches 4 run effect give @s slowness 1 3 true
execute if score .echo_chunk_count temp matches 5 run effect give @s slowness 1 4 true
execute if score .echo_chunk_count temp matches 6 run effect give @s slowness 1 5 true
execute if score .echo_chunk_count temp matches 7.. run effect give @s slowness 1 6 true