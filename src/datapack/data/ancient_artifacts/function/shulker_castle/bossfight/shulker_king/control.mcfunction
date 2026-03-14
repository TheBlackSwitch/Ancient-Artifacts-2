scoreboard players remove @s tp_cooldown 1

##--------------------
##    DEFECNCES
##--------------------

##Defence Teleport
execute unless score @s tp_cooldown matches 1.. if entity @s[nbt={HurtTime:10s}] if predicate theblackswitch:__version__/__patch__/rand/65 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/defence/teleport/activate


##--------------------
##     ATTACKS
##--------------------

scoreboard players add @s animation 1


execute if score @s animation matches 20 store result score @s attack run random value 0..29

execute if score @s animation matches 20 if entity @s[tag=difficulty_1] if predicate theblackswitch:__version__/__patch__/rand/25 if score @s attack matches 12..17 store result score @s attack run random value 0..29
execute if score @s animation matches 20 if entity @s[tag=difficulty_2] if predicate theblackswitch:__version__/__patch__/rand/25 if score @s attack matches 12..17 store result score @s attack run random value 0..29

execute if score @s attack matches 0..1 if score @s animation matches 150.. run scoreboard players set @s animation 0

execute if score @s animation matches 20.. if score @s attack matches 2..12 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/bullet_storm/animation

execute if score @s animation matches 20.. if score @s attack matches 12..17 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/summon_healer/animation

execute if score @s animation matches 20.. if score @s attack matches 18..25 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/lazer/animation

execute if score @s animation matches 20.. if score @s attack matches 26..29 run function ancient_artifacts:shulker_castle/bossfight/shulker_king/attacks/fireball_rain/animation