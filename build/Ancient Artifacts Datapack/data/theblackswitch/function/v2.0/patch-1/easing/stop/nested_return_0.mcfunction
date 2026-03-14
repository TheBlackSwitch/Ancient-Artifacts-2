function theblackswitch:v2.0/patch-1/easing/run/reset
execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, [{text: "Successfully stopped easing for entity: "}, {selector: "@s", color: "green", underlined: true}]]
