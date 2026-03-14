scoreboard players set #16 temp 16
data remove storage ancient_artifacts:hex calc
$scoreboard players set .red temp $(red)
$scoreboard players set .green temp $(green)
$scoreboard players set .blue temp $(blue)
scoreboard players operation .rMs temp = .red temp
scoreboard players operation .rMs temp /= #16 temp
data remove storage ancient_artifacts:hex calc.str2
execute if score .rMs temp matches 0..9 store result storage ancient_artifacts:hex calc.str2 int 1 run scoreboard players get .rMs temp
execute if score .rMs temp matches 10 run data modify storage ancient_artifacts:hex calc.str2 set value "A"
execute if score .rMs temp matches 11 run data modify storage ancient_artifacts:hex calc.str2 set value "B"
execute if score .rMs temp matches 12 run data modify storage ancient_artifacts:hex calc.str2 set value "C"
execute if score .rMs temp matches 13 run data modify storage ancient_artifacts:hex calc.str2 set value "D"
execute if score .rMs temp matches 14 run data modify storage ancient_artifacts:hex calc.str2 set value "E"
execute if score .rMs temp matches 15 run data modify storage ancient_artifacts:hex calc.str2 set value "F"
scoreboard players operation .rLs temp = .red temp
scoreboard players operation .rLs temp %= #16 temp
data remove storage ancient_artifacts:hex calc.str3
execute if score .rLs temp matches 0..9 store result storage ancient_artifacts:hex calc.str3 int 1 run scoreboard players get .rLs temp
execute if score .rLs temp matches 10 run data modify storage ancient_artifacts:hex calc.str3 set value "A"
execute if score .rLs temp matches 11 run data modify storage ancient_artifacts:hex calc.str3 set value "B"
execute if score .rLs temp matches 12 run data modify storage ancient_artifacts:hex calc.str3 set value "C"
execute if score .rLs temp matches 13 run data modify storage ancient_artifacts:hex calc.str3 set value "D"
execute if score .rLs temp matches 14 run data modify storage ancient_artifacts:hex calc.str3 set value "E"
execute if score .rLs temp matches 15 run data modify storage ancient_artifacts:hex calc.str3 set value "F"
scoreboard players operation .gMs temp = .green temp
scoreboard players operation .gMs temp /= #16 temp
data remove storage ancient_artifacts:hex calc.str4
execute if score .gMs temp matches 0..9 store result storage ancient_artifacts:hex calc.str4 int 1 run scoreboard players get .gMs temp
execute if score .gMs temp matches 10 run data modify storage ancient_artifacts:hex calc.str4 set value "A"
execute if score .gMs temp matches 11 run data modify storage ancient_artifacts:hex calc.str4 set value "B"
execute if score .gMs temp matches 12 run data modify storage ancient_artifacts:hex calc.str4 set value "C"
execute if score .gMs temp matches 13 run data modify storage ancient_artifacts:hex calc.str4 set value "D"
execute if score .gMs temp matches 14 run data modify storage ancient_artifacts:hex calc.str4 set value "E"
execute if score .gMs temp matches 15 run data modify storage ancient_artifacts:hex calc.str4 set value "F"
scoreboard players operation .gLs temp = .green temp
scoreboard players operation .gLs temp %= #16 temp
data remove storage ancient_artifacts:hex calc.str5
execute if score .gLs temp matches 0..9 store result storage ancient_artifacts:hex calc.str5 int 1 run scoreboard players get .gLs temp
execute if score .gLs temp matches 10 run data modify storage ancient_artifacts:hex calc.str5 set value "A"
execute if score .gLs temp matches 11 run data modify storage ancient_artifacts:hex calc.str5 set value "B"
execute if score .gLs temp matches 12 run data modify storage ancient_artifacts:hex calc.str5 set value "C"
execute if score .gLs temp matches 13 run data modify storage ancient_artifacts:hex calc.str5 set value "D"
execute if score .gLs temp matches 14 run data modify storage ancient_artifacts:hex calc.str5 set value "E"
execute if score .gLs temp matches 15 run data modify storage ancient_artifacts:hex calc.str5 set value "F"
scoreboard players operation .bMs temp = .blue temp
scoreboard players operation .bMs temp /= #16 temp
data remove storage ancient_artifacts:hex calc.str6
execute if score .bMs temp matches 0..9 store result storage ancient_artifacts:hex calc.str6 int 1 run scoreboard players get .bMs temp
execute if score .bMs temp matches 10 run data modify storage ancient_artifacts:hex calc.str6 set value "A"
execute if score .bMs temp matches 11 run data modify storage ancient_artifacts:hex calc.str6 set value "B"
execute if score .bMs temp matches 12 run data modify storage ancient_artifacts:hex calc.str6 set value "C"
execute if score .bMs temp matches 13 run data modify storage ancient_artifacts:hex calc.str6 set value "D"
execute if score .bMs temp matches 14 run data modify storage ancient_artifacts:hex calc.str6 set value "E"
execute if score .bMs temp matches 15 run data modify storage ancient_artifacts:hex calc.str6 set value "F"
scoreboard players operation .bLs temp = .blue temp
scoreboard players operation .bLs temp %= #16 temp
data remove storage ancient_artifacts:hex calc.str7
execute if score .bLs temp matches 0..9 store result storage ancient_artifacts:hex calc.str7 int 1 run scoreboard players get .bLs temp
execute if score .bLs temp matches 10 run data modify storage ancient_artifacts:hex calc.str7 set value "A"
execute if score .bLs temp matches 11 run data modify storage ancient_artifacts:hex calc.str7 set value "B"
execute if score .bLs temp matches 12 run data modify storage ancient_artifacts:hex calc.str7 set value "C"
execute if score .bLs temp matches 13 run data modify storage ancient_artifacts:hex calc.str7 set value "D"
execute if score .bLs temp matches 14 run data modify storage ancient_artifacts:hex calc.str7 set value "E"
execute if score .bLs temp matches 15 run data modify storage ancient_artifacts:hex calc.str7 set value "F"
data modify storage ancient_artifacts:hex calc.str1 set value "#"
$data modify storage ancient_artifacts:hex calc.return set value "$(return)"
function ancient_artifacts:utilities/join_strings with storage ancient_artifacts:hex calc
