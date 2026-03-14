$execute store result storage ancient_artifacts:sound pitch float 0.01 run random value $(range)
$data modify storage ancient_artifacts:sound ID set value '$(ID)'
$data modify storage ancient_artifacts:sound source set value '$(source)'
$data modify storage ancient_artifacts:sound target set value '$(target)'
$data modify storage ancient_artifacts:sound pos set value '$(pos)'
$data modify storage ancient_artifacts:sound vol set value $(vol)
$data modify storage ancient_artifacts:sound minVol set value $(minVol)
function ancient_artifacts:playsound with storage ancient_artifacts:sound
