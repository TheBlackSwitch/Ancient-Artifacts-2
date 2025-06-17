$bossbar add ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) {"text":"\uE516","color":"#4e5c24"}
$bossbar set ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) color yellow

$bossbar add ancient_artifacts:shulker_king_space_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) {"text":"","color":"#4e5c24"}


##Add an offset of +48 since the bossbar texture is smaller than the bossbar (24HP on the left and 24HP on the right is not visible)
$execute as @n[type=shulker,tag=shulker_king,tag=boss_started] if entity @s[tag=difficulty_1] run bossbar set ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 200
$execute as @n[type=shulker,tag=shulker_king,tag=boss_started] if entity @s[tag=difficulty_2] run bossbar set ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 300
$execute as @n[type=shulker,tag=shulker_king,tag=boss_started] if entity @s[tag=difficulty_3] run bossbar set ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 400
$execute as @n[type=shulker,tag=shulker_king,tag=boss_started] if entity @s[tag=difficulty_4] run bossbar set ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 500
$execute as @n[type=shulker,tag=shulker_king,tag=boss_started] if entity @s[tag=difficulty_5] run bossbar set ancient_artifacts:shulker_king_$(UUID1)_$(UUID2)_$(UUID3)_$(UUID4) max 600