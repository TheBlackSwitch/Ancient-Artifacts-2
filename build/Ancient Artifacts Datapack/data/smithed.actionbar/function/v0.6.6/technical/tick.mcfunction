schedule function smithed.actionbar:v0.6.6/technical/tick 1 replace
execute as @a[scores={smithed.actionbar.freeze=1}] run function smithed.actionbar:v0.6.6/reset
scoreboard players remove @a[scores={smithed.actionbar.freeze=1..}] smithed.actionbar.freeze 1
scoreboard players reset @a smithed.actionbar.sneaking
tag @a[tag=smithed.actionbar.sleeping, nbt={SleepTimer: 101s}] remove smithed.actionbar.sleeping
tag @a[tag=smithed.actionbar.sleeping, scores={smithed.actionbar.sleep_t=0}, nbt={SleepTimer: 0s}] remove smithed.actionbar.sleeping
scoreboard players remove @a[scores={smithed.actionbar.sleep_t=1..}] smithed.actionbar.sleep_t 1
