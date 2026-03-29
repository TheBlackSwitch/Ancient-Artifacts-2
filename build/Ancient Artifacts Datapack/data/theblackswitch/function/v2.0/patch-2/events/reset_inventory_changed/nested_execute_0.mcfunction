function theblackswitch:v2.0/patch-2/overlay/show/update
function theblackswitch:v2.0/patch-2/clear_item/inventory_change
function #theblackswitch:v2.0/events/inventory_changed
advancement revoke @s only theblackswitch:v2.0/patch-2/events/inventory_changed 
tag @s remove tbs.inventory_changed
