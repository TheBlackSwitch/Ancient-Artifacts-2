$execute if score @s cutscene matches 1..291 as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run scoreboard players set @s effect_type 0
$execute if score @s cutscene matches 1..319 as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run scoreboard players set @s effect_delay 5

$execute if score @s cutscene matches 15 as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run scoreboard players set @s plot_gamemode 3
$execute if score @s cutscene matches 15 as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run gamemode spectator @s
$execute if score @s cutscene matches 15 as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] at @s run function ancient_artifacts:dungeon/cutscene/init_overlay
$execute if score @s cutscene matches 15.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run spectate @e[type=item_display,tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4),limit=1] @s


execute if score @s cutscene matches 31..100 run function ancient_artifacts:dungeon/cutscene/ease {duration:70,max:45,x:-1,y:30,z:-22,yaw:0,pitch:30}

execute if score @s cutscene matches 50..55 at @e[tag=dungeon_entrance,limit=1,sort=nearest] positioned ~8 ~36 ~2 run function ancient_artifacts:dungeon/cutscene/lightning_bolt
execute if score @s cutscene matches 50..55 at @e[tag=dungeon_entrance,limit=1,sort=nearest] positioned ~-8 ~36 ~2 run function ancient_artifacts:dungeon/cutscene/lightning_bolt
execute if score @s cutscene matches 50..55 at @e[tag=dungeon_entrance,limit=1,sort=nearest] positioned ~9 ~36 ~2 run function ancient_artifacts:dungeon/cutscene/lightning_bolt
execute if score @s cutscene matches 50..55 at @e[tag=dungeon_entrance,limit=1,sort=nearest] positioned ~-9 ~36 ~2 run function ancient_artifacts:dungeon/cutscene/lightning_bolt
execute if score @s cutscene matches 50..55 at @e[tag=dungeon_entrance,limit=1,sort=nearest] positioned ~8 ~36 ~-1 run function ancient_artifacts:dungeon/cutscene/lightning_bolt
execute if score @s cutscene matches 50..55 at @e[tag=dungeon_entrance,limit=1,sort=nearest] positioned ~-8 ~36 ~-1 run function ancient_artifacts:dungeon/cutscene/lightning_bolt

execute if score @s cutscene matches 55 run playsound ancient_artifacts:cutscene.dungeon.creep master @a ~ ~ ~ 1 1
execute if score @s cutscene matches 60..76 as @n[type=marker,tag=dungeon_entrance] at @s run function ancient_artifacts:dungeon/cutscene/animate_statue
execute if score @s cutscene matches 101..120 run function ancient_artifacts:dungeon/cutscene/ease {duration:20,max:20,x:2,y:-40,z:-15,yaw:0,pitch:76}

##Calculate distance from dungeon_center
execute if score @s cutscene matches 121 store result score @s currentY run data get entity @s Pos[1]
execute if score @s cutscene matches 121 store result score @s centerY run data get entity @e[tag=dungeon_center,limit=1,sort=nearest,distance=..1000] Pos[1]
scoreboard players operation .1 temp = @s centerY
scoreboard players add .1 temp 5
execute if score @s cutscene matches 121..220 store result storage ancient_artifacts:ease y int 1 run scoreboard players operation .1 temp -= @s currentY

execute if score @s cutscene matches 121 run playsound ancient_artifacts:cutscene.dungeon.buildup master @a ~ ~ ~ 1 1
execute if score @s cutscene matches 121..220 run data merge storage ancient_artifacts:ease {duration:100,max:20,x:0,z:0,yaw:180,pitch:0}
execute if score @s cutscene matches 171 run summon marker ~ ~-2 ~5 {Tags:[lightning_dir]}
execute if score @s cutscene matches 280..295 positioned ^-0.5 ^-1 ^8 run playsound block.respawn_anchor.deplete block @a
execute if score @s cutscene matches 280..295 at @e[tag=lightning_particle,limit=6,sort=nearest] facing entity @e[tag=lightning_dir,limit=1,sort=nearest] eyes rotated ~ 0 run function ancient_artifacts:ancient_altar/lightning_particle {length:50}
execute if score @s cutscene matches 121..220 run function ancient_artifacts:dungeon/cutscene/ease with storage ancient_artifacts:ease

execute if score @s cutscene matches 221..250 run function ancient_artifacts:dungeon/cutscene/ease {duration:30,max:20,x:1,y:-6,z:3,yaw:45,pitch:-80}
execute if score @s cutscene matches 271..300 run function ancient_artifacts:dungeon/cutscene/ease {duration:30,max:20,x:-2,y:0,z:-2,yaw:-45,pitch:0}
execute if score @s cutscene matches 280..285 if score #3 tbs.slow_tick matches 3 positioned ^ ^-3 ^7 run function ancient_artifacts:dungeon/cutscene/summon_animation
execute if score @s cutscene matches 301..330 run function ancient_artifacts:dungeon/cutscene/ease {duration:30,max:20,x:-2,y:0,z:2,yaw:-45,pitch:0}
execute if score @s cutscene matches 300 positioned ^-0.5 ^-1 ^8 run function ancient_artifacts:artifact_golem/summon
$execute if score @s cutscene matches 320.. at @e[tag=dungeon_center,limit=1,sort=nearest] as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run tp @s ~-1 ~ ~-2
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run gamemode survival @s
$execute if score @s cutscene matches 320.. at @e[tag=dungeon_center,limit=1,sort=nearest] as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] positioned ~-1 ~ ~-2 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 2
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] at @s run function ancient_artifacts:dungeon/cutscene/reset_overlay
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run title @s title {"text":"Objective:","color":"blue"}
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run title @s subtitle {"text":"RUN!!!","color":"red","bold":true}
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run scoreboard players set @s effect_type 1
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run scoreboard players set @s plot_gamemode 0
$execute if score @s cutscene matches 320.. as @a[tag=cutscene,tag=$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4)] run function ancient_artifacts:dungeon/cutscene/remove_tag with storage ancient_artifacts:cutscene





execute unless score @s cutscene matches 331.. run scoreboard players add @s cutscene 1