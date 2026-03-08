## Ancient Artifacts V2.5.5a out now!

### New features:
- Added a new about datapack dialog
- Added a new tooltip design
- Added a new advancement (again for some reason) that indicates that the artifact golem is invincible
- Started using version overlays which allows the same datapack / resourcepack file to be used for more minecraft versions making support for older versions easier

### Changes:
- Converted this project into a bolt project for faster and easier development and optimizations
- Completely re-written my datapack library
- Made the version resolution of my library between datapacks a lot easier on the user side
- Moved the configs into a new dialog menu
- Update the datapack to 1.21.11
- Applied almost all smithed's datapack conventions
- You can now access the creative book dialog through the quick actions button (G by default)
- Slightly changed the artifact golem's attack animation
- Added some particles to the artifact golem's attack animation
- Templates and essence should now drop earlier
- Tweaked mob spawning around the overgrown ocean ruins to be a more thin constant flow instead of bug difficult waves.
- Tweaked mob spawning during a sculk heart to be more balanced and uniform
- The sculk heart mobs now sometimes drop some food
- Changed the way upgrades are distributed. You should get roughly the same ammount of upgrades but just less upgrades at once but more frequent.
- Added some new particles to show when you're activating the sculk heart
- Increased the xp-rate of experienced chain to make it more useful
- Ancient Artifacts is now compatable with [lullaby's graves](https://modrinth.com/datapack/ly-graves/)
- Ancient Artifacts is now compatable with [Alchemika by Hashs](https://modrinth.com/datapack/alchemika/)

### Bugs Fixed:
- The manual said that lifesteal necklace had only II levels but it has III
- Fixed a bug where the cauldron would fail on adding any compound
- Raging ring is now more stable and works better overall
- Not all blockstates from 1.21.5 were added correctly
- Not all blockstates from 1.21.6 were added correctly
- Not all blockstates from 1.21.9 were added correctly
- Not all blocks from 1.21.9 were added correctly
- Not all entities from 1.21.9 were added correctly
- Fixed a lot of blockstates not showing with tinkering tiara
- Fixed parchments taking some time to open
- Parchments could sometimes crash the game
- Some parchments show the result of the previous opened parchment
- Artifact chests now properly swing your mainhand when interacted
- Sometimes artifact chests would spawn multiple times in the same block
- Fixed a spelling mistake in the artifact manual
- Fireball expert just didn't work
- Fireball ring now properly fills fire around it's explosion and no longer flashes commandblocks when doing so
- Detecting borla now properly makes ores glow and no longer flashes commandblocks when doing so
- Cooling boots now properly fills basalt in lava and no longer flashes commandblocks when doing so
- Luck of the sea didn't work properly
- Some crafted items didn't have the custom tooltip design

### Optimizations:
- Optimized the creative book
- Optimized my datapack library a lot:
    - Clearing items is now optimized
    - Easing is now optimized
    - Events are now optimized
    - Math (sqrt) is optimized
    - Overlay is completely re-written 
    - Player ID system is optimized
    - Player storage is optimized
    - Slow ticking is optimized
- Optimized parchment rendering
- Optimized parchment relic generation
- Optimized mob spawning around structures
- Optimized the expansion stars + expanded effect
- Optimized dungeon
- Optimized configs
- Optimized artifact chests (damn their code was bad xD)
- Heavily optimized artifact golems
- Optimized the sculk heart