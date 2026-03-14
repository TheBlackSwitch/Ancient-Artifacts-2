BLOCKS = [
    "minecraft:coal_ore",
    "minecraft:deepslate_coal_ore",

    "minecraft:iron_ore",
    "minecraft:deepslate_iron_ore",

    "minecraft:gold_ore",
    "minecraft:deepslate_gold_ore",

    "minecraft:copper_ore",
    "minecraft:deepslate_copper_ore",
    
    "minecraft:diamond_ore",
    "minecraft:deepslate_diamond_ore",

    "minecraft:lapis_ore",
    "minecraft:deepslate_lapis_ore",

    "minecraft:emerald_ore",
    "minecraft:deepslate_emerald_ore",

    "minecraft:redstone_ore",
    "minecraft:deepslate_redstone_ore",

    "minecraft:nether_quartz_ore",
    "minecraft:nether_gold_ore",
    "minecraft:ancient_debris",

    "minecraft:raw_copper_block",
    "minecraft:raw_gold_block",
    "minecraft:raw_iron_block"
]

COLORS = [
    1,
    1,

    16761500,
    16761500,

    16766208,
    16766208,

    16740096,
    16740096,

    64511,
    64511,

    5631,
    5631,

    195136,
    195136,

    16515847,
    16515847,

    16777215,
    16777215,
    2821383,

    16740096,
    16766208,
    16761500
]


index = 0
for b in BLOCKS:
    execute if block ~ ~ ~ b run function ancient_artifacts:artifacts/deep_dark/detecting_borla/summon_glow {block:f"{b}",color:COLORS[index]}
    index += 1