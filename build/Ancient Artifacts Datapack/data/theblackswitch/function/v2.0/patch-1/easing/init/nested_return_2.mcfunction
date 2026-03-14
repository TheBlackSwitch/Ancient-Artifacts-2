execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, {text: "Failed to init easing, missing field x!"}]
return fail
