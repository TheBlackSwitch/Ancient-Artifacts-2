#--------------------REQUIREMENTS-------------------------
# 1. Run as target entity to set the animation
#---------------------------------------------------------

#-----------------------EXAMPLE---------------------------
# execute if score @s animation matches 1 run function theblackswitch:easing/init {duration:40,x:3,y:4,z:10,yaw:30,pitch:0,ease:"ease_in_out"}
#---------------------------------------------------------

execute if entity @s[tag=tbs.easing] run function theblackswitch:easing/internal/reset