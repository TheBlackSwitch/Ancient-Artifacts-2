execute if score @s tooltip_size matches 1 run \
    data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=background] text set value \
    [ \
       {"translate":"tooltip.bg.SPACE","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.BL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BR","font":"ancient_artifacts:main"} \
    ]

execute if score @s tooltip_size matches 2 run \
    data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=background] text set value \
    [ \
       {"translate":"tooltip.bg.SPACE","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.BL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BR","font":"ancient_artifacts:main"} \
    ]

execute if score @s tooltip_size matches 3 run \
    data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=background] text set value \
    [ \
       {"translate":"tooltip.bg.SPACE","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.TR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.ML","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.MR","font":"ancient_artifacts:main"}, \
       {"translate":"tooltip.bg.BL","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BM","font":"ancient_artifacts:main"},{"translate":"tooltip.bg.BR","font":"ancient_artifacts:main"} \
    ]