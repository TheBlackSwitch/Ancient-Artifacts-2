$tellraw @a {"text":"$(Type)","color":"green"}
tellraw @a {"text":"--------------------------"}
$say Tags: $(Tags)
$say Rot: $(Rot)
say UUID: @s
$tellraw @a {"text":"[Item Display]: TP","click_event": {"action": "run_command","command": "/tp $(X) $(Y) $(Z)"},"hover_event": {"action": "show_text","value": "/tp $(X) $(Y) $(Z)"}}
