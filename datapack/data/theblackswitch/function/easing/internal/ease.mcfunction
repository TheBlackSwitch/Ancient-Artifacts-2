
##---------------------EASING-FUNCTIONS---------------------
# 1. ease_in:       x = t^2
# 2. ease_out:      x = -t^2 + 2t
# 3. ease_in_out:   x = t^2(3-2t)
# 4. linear:        x = t
#
# See: https://www.geogebra.org/calculator/mnpts4yf
##----------------------------------------------------------


##----------
# Constants
##----------
scoreboard players set .1000 temp 1000
scoreboard players set .1000000 temp 1000000
scoreboard players set .-1 temp -1
scoreboard players set .2 temp 2
scoreboard players set .3 temp 3


# calculate the time progress (t) (which is the x coord of the easing function) 
# t=0 means the animation just started and t=1 means the animation is done
scoreboard players operation .t temp = @s tbs.easing.duration
scoreboard players operation .t temp -= @s tbs.easing.current_tick
scoreboard players operation .t temp *= .1000 temp
scoreboard players operation .t temp /= @s tbs.easing.duration


## Calculate the current displacement factor (x)
execute if score @s tbs.easing.ease matches 1 store result score .x temp run function theblackswitch:easing/internal/functions/ease_in
execute if score @s tbs.easing.ease matches 2 store result score .x temp run function theblackswitch:easing/internal/functions/ease_out
execute if score @s tbs.easing.ease matches 3 store result score .x temp run function theblackswitch:easing/internal/functions/ease_in_out
execute if score @s tbs.easing.ease matches 4 store result score .x temp run function theblackswitch:easing/internal/functions/linear

##Calculate the current position and rotation
scoreboard players operation .curr_x temp = @s tbs.easing.x
scoreboard players operation .curr_x temp *= .x temp
scoreboard players operation .curr_x temp /= .1000 temp

scoreboard players operation .curr_y temp = @s tbs.easing.y
scoreboard players operation .curr_y temp *= .x temp
scoreboard players operation .curr_y temp /= .1000 temp

scoreboard players operation .curr_z temp = @s tbs.easing.z
scoreboard players operation .curr_z temp *= .x temp
scoreboard players operation .curr_z temp /= .1000 temp

scoreboard players operation .curr_yaw temp = @s tbs.easing.yaw
scoreboard players operation .curr_yaw temp *= .x temp
scoreboard players operation .curr_yaw temp /= .1000 temp

scoreboard players operation .curr_pitch temp = @s tbs.easing.pitch
scoreboard players operation .curr_pitch temp *= .x temp
scoreboard players operation .curr_pitch temp /= .1000 temp

##Calculate the relative displacement
scoreboard players operation .displ_x temp = .curr_x temp
execute store result storage theblackswitch:temp easing.displacement.x float 0.001 run scoreboard players operation .displ_x temp -= @s tbs.easing.prev_x

scoreboard players operation .displ_y temp = .curr_y temp
execute store result storage theblackswitch:temp easing.displacement.y float 0.001 run scoreboard players operation .displ_y temp -= @s tbs.easing.prev_y

scoreboard players operation .displ_z temp = .curr_z temp
execute store result storage theblackswitch:temp easing.displacement.z float 0.001 run scoreboard players operation .displ_z temp -= @s tbs.easing.prev_z

scoreboard players operation .displ_yaw temp = .curr_yaw temp
execute store result storage theblackswitch:temp easing.displacement.yaw float 0.001 run scoreboard players operation .displ_yaw temp -= @s tbs.easing.prev_yaw

scoreboard players operation .displ_pitch temp = .curr_pitch temp
execute store result storage theblackswitch:temp easing.displacement.pitch float 0.001 run scoreboard players operation .displ_pitch temp -= @s tbs.easing.prev_pitch

##Update the previous position
scoreboard players operation @s tbs.easing.prev_x = .curr_x temp
scoreboard players operation @s tbs.easing.prev_y = .curr_y temp
scoreboard players operation @s tbs.easing.prev_z = .curr_z temp
scoreboard players operation @s tbs.easing.prev_yaw = .curr_yaw temp
scoreboard players operation @s tbs.easing.prev_pitch = .curr_pitch temp

## Teleport
data modify entity @s teleport_duration set value 5
function theblackswitch:easing/internal/teleport with storage theblackswitch:temp easing.displacement


## Time handling
execute if score @s tbs.easing.current_tick matches 0 run function theblackswitch:easing/internal/reset
scoreboard players remove @s tbs.easing.current_tick 5
execute if score @s tbs.easing.current_tick matches ..0 run scoreboard players set @s tbs.easing.current_tick 0
