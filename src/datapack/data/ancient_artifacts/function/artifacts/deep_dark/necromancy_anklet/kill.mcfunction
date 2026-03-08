tp @s ~ -100 ~
damage @s 1024 ancient_artifacts:necromance_kill
particle block{block_state:{Name:"sculk"}} ~ ~ ~ 0.2 1.3 0.2 0 30 force
particle cloud ~ ~ ~ 0.3 0.1 0.3 0 3 force
playsound block.sculk.break player @a ~ ~ ~ 2 1
playsound block.gravel.break player @a ~ ~ ~ 2 0
