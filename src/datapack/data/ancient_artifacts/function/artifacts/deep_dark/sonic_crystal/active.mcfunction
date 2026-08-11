execute if entity @s[tag=focused] run scoreboard players add @s artifact 1

execute if predicate theblackswitch:__version__/__patch__/movement_check/sneak unless score @s sonic_cooldown matches 1.. run scoreboard players set @s sonic_cooldown 2440

execute unless predicate theblackswitch:__version__/__patch__/movement_check/sneak if score @s sonic_cooldown matches 2401..2440 run function ancient_artifacts:artifacts/deep_dark/sonic_crystal/reset

execute if score @s sonic_cooldown matches 2440 run playsound entity.warden.sonic_charge player @a ~ ~ ~ 1 1
execute if score @s sonic_cooldown matches 2440 run effect give @s slowness 2 1 true
execute if score @s sonic_cooldown matches 2405.. run particle minecraft:trial_spawner_detection_ominous ~ ~0.9 ~ 0.2 0.3 0.2 0 1 force

execute if score @s sonic_cooldown matches 2401 run function ancient_artifacts:artifacts/deep_dark/sonic_crystal/boom

execute if score @s artifact matches 96 if score @s sonic_cooldown matches 2400 run scoreboard players set @s sonic_cooldown 1200

tag @s add sonic_crystal