$dialog show @s { \
    "type": "minecraft:multi_action", \
    "title": { \
        "text": "Ancient Artifacts - ", \
        "extra": [ \
            { \
                "text": "Configs", \
                "color": "gold", \
                "bold": true \
            } \
        ], \
        "color": "light_purple", \
        "bold": true \
    }, \
    "body": { \
        "type": "plain_message", \
        "contents": { \
            "text": "Edit Configs:", \
            "color": "gold", \
            "underlined": true \
        } \
    }, \
    "can_close_with_escape": true, \
    "pause": false, \
    "columns": 1, \
    "after_action": "none", \
    "exit_action": { \
        "label": { \
            "text": "Done", \
            "color": "green" \
        }, \
        "action": { \
            "type": "minecraft:run_command", \
            "command": "/trigger aa.config set -1" \
        } \
    }, \
    "actions": [ \
        { \
            "label": {"text":"Always Show Artifact Hotbar: ","extra":[$(always_show_hotbar)]}, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "/trigger aa.config set 4560001" \
            }, \
            "width": 250 \
        }, \
        { \
            "label": {"text":"Hide Artifact Hud: ","extra":[$(hide_artifact_hud)]}, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "/trigger aa.config set 4560002" \
            }, \
            "width": 250 \
        }, \
        { \
            "label": { \
                "text": "Show Storing Circlet Particles: ", \
                "extra":[$(show_storing_circlet_particles)], \
                "color": "$(show_storing_circlet_particles_text_color)" \
            }, \
            "action": { \
                "type": "minecraft:run_command", \
                "command": "/trigger aa.config set 4560003" \
            }, \
            "width": 250 \
        } \
    ] \
}