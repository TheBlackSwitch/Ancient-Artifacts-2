playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2
playsound ancient_artifacts:entity.artifact_golem.lazer.start master @a ~ ~ ~ 1 1.4
function ancient_artifacts:artifacts/end/radiant_watch/lazer

scoreboard players add @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search] lazers 1