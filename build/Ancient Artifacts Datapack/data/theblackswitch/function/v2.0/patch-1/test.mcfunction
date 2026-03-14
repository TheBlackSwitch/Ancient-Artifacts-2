execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
item replace entity @s container.0 with acacia_boat
execute if items entity @s container.0 acacia_boat run say hi!
kill @s
