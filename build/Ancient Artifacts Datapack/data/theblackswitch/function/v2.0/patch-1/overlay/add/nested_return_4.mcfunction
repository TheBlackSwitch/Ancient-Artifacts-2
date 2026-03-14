execute if score #tbs-v2.0.debug_enabled tbs.server_data matches 1 run tellraw @a[tag=tbs.debug] ["", {text: "[Debug]: ", color: "yellow", bold: true}, {text: "Failed to apply overlay, priority must be one of [persitent|conditional|notification|override]"}]
return fail
