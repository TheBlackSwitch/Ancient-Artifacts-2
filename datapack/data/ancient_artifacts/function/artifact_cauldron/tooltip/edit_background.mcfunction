execute if score @s tooltip_size matches 1 run \
    data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=background] text set value \
    [ \
       {"translate":"tooltip.bg.SPACE"},{"translate":"tooltip.bg.TL"},{"translate":"tooltip.bg.TM"},{"translate":"tooltip.bg.TR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.BL"},{"translate":"tooltip.bg.BM"},{"translate":"tooltip.bg.BR"} \
    ]

execute if score @s tooltip_size matches 2 run \
    data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=background] text set value \
    [ \
       {"translate":"tooltip.bg.SPACE"},{"translate":"tooltip.bg.TL"},{"translate":"tooltip.bg.TM"},{"translate":"tooltip.bg.TM"},{"translate":"tooltip.bg.TR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.BL"},{"translate":"tooltip.bg.BM"},{"translate":"tooltip.bg.BM"},{"translate":"tooltip.bg.BR"} \
    ]

execute if score @s tooltip_size matches 3 run \
    data modify entity @n[type=text_display,dy=0,tag=artifact_cauldron,tag=tooltip,tag=background] text set value \
    [ \
       {"translate":"tooltip.bg.SPACE"},{"translate":"tooltip.bg.TL"},{"translate":"tooltip.bg.TM"},{"translate":"tooltip.bg.TM"},{"translate":"tooltip.bg.TR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.ML"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MM"},{"translate":"tooltip.bg.MR"}, \
       {"translate":"tooltip.bg.BL"},{"translate":"tooltip.bg.BM"},{"translate":"tooltip.bg.BM"},{"translate":"tooltip.bg.BR"} \
    ]