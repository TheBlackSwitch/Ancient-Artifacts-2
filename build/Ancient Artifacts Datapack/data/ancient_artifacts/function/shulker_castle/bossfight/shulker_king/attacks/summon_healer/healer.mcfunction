summon item_display ~ ~ ~ {Tags: ["healing_particle", "INIT"]}
execute facing entity @n[type=shulker, tag=shulker_king] eyes run tp @e[type=item_display, tag=healing_particle, tag=INIT] ~ ~ ~ ~ ~
tag @e[type=item_display, tag=healing_particle, tag=INIT] remove INIT
