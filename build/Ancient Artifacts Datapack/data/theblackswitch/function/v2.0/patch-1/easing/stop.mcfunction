execute unless function theblackswitch:v2.0/patch-1/version_control/is_latest run return fail
execute if entity @s[tag=tbs.easing] run return run function theblackswitch:v2.0/patch-1/easing/stop/nested_return_0
execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, [{text: "Easing already stopped for entity: "}, {selector: "@s", color: "green", underlined: true}]]
