scoreboard players remove .bulk temp 1
execute if block ~ ~ ~ #diamond_ores run scoreboard players add .dia_mined temp 1
execute if score .dia_mined temp matches 24.. run advancement grant @s only ancient_artifacts:artifacts/deep_dark/bulky_expert
execute if data storage ancient_artifacts:block {id:"#ancient_artifacts:tree"} if block ~ ~ ~ #leaves run scoreboard players add .bulk temp 1
execute positioned ~0.5 ~0.5 ~0.5 run tag @n[type=marker,tag=bulk] add done

execute unless score .bulk temp matches 1.. run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
execute if entity @s[tag=smelt] unless entity @s[tag=first_bulk] as @n[type=item,dy=0,tag=!smelted,tag=!checked_smelt] run function ancient_artifacts:artifacts/nether/smelting_tiara/smelt

$execute positioned ~ ~ ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~1 ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~1 ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~-1 ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~-1 ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~ ~-1 ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}

$execute positioned ~1 ~ ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~1 ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~1 ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~1 ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~-1 ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~-1 ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}

$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~1 ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~1 ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~-1 ~ if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}
$execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ $(id) positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=bulk,distance=..0.3] run summon marker ~ ~ ~ {Tags:[bulk]}

tag @s remove first_bulk

execute at @e[type=marker,tag=bulk,tag=!done] align xyz run function ancient_artifacts:artifacts/deep_dark/bulky_chain/break with storage ancient_artifacts:block