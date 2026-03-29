execute unless function theblackswitch:v2.0/patch-2/version_control/is_latest run return fail
$data remove storage theblackswitch:loaded $(pack_id).current
$data merge storage theblackswitch:loaded {$(pack_id):{current:{major:$(major), minor:$(minor), patch:$(patch), suffix:$(suffix)}}}
$execute unless data storage theblackswitch:loaded {$(pack_id):{history:[{major:$(major), minor:$(minor), patch:$(patch), suffix:$(suffix)}]}} run data modify storage theblackswitch:loaded $(pack_id).history append value {major:$(major), minor:$(minor), patch:$(patch), suffix:$(suffix)}
