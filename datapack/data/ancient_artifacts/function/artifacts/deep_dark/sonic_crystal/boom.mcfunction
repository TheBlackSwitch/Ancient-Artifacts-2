playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1
summon wind_charge ^ ^1.5 ^1 {Motion:[0.0d, -5d, 0.0d]}
summon wind_charge ^ ^1.5 ^1.2 {Motion:[0.0d, -5d, 0.0d]}
scoreboard players operation .search tbs.ID = @s tbs.ID
execute anchored eyes positioned ^ ^ ^1 run function ancient_artifacts:artifacts/deep_dark/sonic_crystal/raycast