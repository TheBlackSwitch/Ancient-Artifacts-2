playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2
playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 1 1.4
function ancient_artifacts:artifacts/end/radiant_watch/lazer
scoreboard players add @a[predicate=theblackswitch:v2.0/patch-3/player_id/match_search] lazers 1
