execute unless function theblackswitch:v2.0/patch-2/version_control/is_latest run return fail
execute unless score #major temp matches -1 if score #major temp < #check-major temp run return 1
execute unless score #major temp matches -1 if score #major temp > #check-major temp run return fail
execute unless score #minor temp matches -1 if score #minor temp < #check-minor temp run return 1
execute unless score #minor temp matches -1 if score #minor temp > #check-minor temp run return fail
execute unless score #patch temp matches -1 if score #patch temp < #check-patch temp run return 1
execute unless score #patch temp matches -1 if score #patch temp > #check-patch temp run return fail
execute unless score #suffix temp matches -1 if score #suffix temp < #check-suffix temp run return 1
execute unless score #suffix temp matches -1 if score #suffix temp > #check-suffix temp run return fail
return fail
