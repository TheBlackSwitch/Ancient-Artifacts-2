tag @r add VICTIM
execute at @a[tag=VICTIM] run summon marker ~ ~ ~ {Tags: ["placement"]}
tellraw @a[tag=VICTIM] [{text: "[Ancient Intelligence]: ", color: "light_purple"}, {text: "Hey it looks like you're trying to build something. I'll help you with that..."}]
