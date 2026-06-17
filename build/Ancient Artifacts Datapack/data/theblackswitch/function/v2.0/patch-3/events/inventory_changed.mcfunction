execute unless function theblackswitch:v2.0/patch-3/version_control/is_latest run return fail
tag @s add tbs.inventory_changed
schedule function theblackswitch:v2.0/patch-3/events/reset_inventory_changed 1 replace
