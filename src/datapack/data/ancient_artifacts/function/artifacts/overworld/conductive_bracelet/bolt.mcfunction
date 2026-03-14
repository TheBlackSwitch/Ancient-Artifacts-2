tag @e[type=creeper,nbt={powered:1b},distance=..20] add pre_charged
function ancient_artifacts:artifacts/overworld/conductive_bracelet/summon_effects
execute align xyz positioned ~-2 ~-2 ~-2 store result score .1 temp if entity @e[type=creeper,dx=6,dy=11,dz=6,tag=!pre_charged]
execute if score .1 temp matches 5.. run advancement grant @s only ancient_artifacts:artifacts/overworld/conductive_expert
