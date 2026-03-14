execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
tag @s add tbs.inventory_changed
schedule function theblackswitch:v2.0/patch-1/events/reset_inventory_changed 1 replace
