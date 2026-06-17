$data modify storage theblackswitch:easing callback_result set from storage theblackswitch:easing callback_queue[{"id":$(callback_id)}].command
$data remove storage theblackswitch:easing callback_queue[{"id":$(callback_id)}]
