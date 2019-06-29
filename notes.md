## Mods

### Paper Server
* [Configuration Options](https://paper.readthedocs.io/en/stable/server/configuration.html)
* [Downloads](https://papermc.io/downloads)

### FAWE
* [Github-Wiki](https://github.com/boy0001/FastAsyncWorldedit/wiki)
* [Spigot: WorldEdit / FAWE / VoxelSniper](https://www.spigotmc.org/resources/fast-async-worldedit-voxelsniper.13932/)
* [Patterns!](https://github.com/boy0001/FastAsyncWorldedit/wiki/WorldEdit-and-FAWE-patterns)
* Schematic server hosting info: [link](https://github.com/boy0001/FastAsyncWorldedit/wiki/Web-API)
* Example HeightMap site: [link](https://github.com/boy0001/HeightMap)

### Regios
* [link](https://dev.bukkit.org/projects/regios)
* could (maybe) be used to make health regenerate quickly at home base, among other features.

### Portal Gun
* [link](https://www.spigotmc.org/resources/portalgun.44746/)

### Wireless Redstone
* [Link](https://dev.bukkit.org/projects/wireless-redstone)

### HeightMap
* [link](https://github.com/boy0001/HeightMap)

### PROJECT RED
* Available for version 1.12.2
* [link](http://www.9minecraft.net/project-red-mod/)
* NOT for spigot/paper but MIGHT work with Sponge or other FORGE modded server


# Server Configuration

### server.properties -- [GUIDE](https://minecraft.gamepedia.com/Server.properties)
Affects world generation but only takes effect before a world is generated for the first time.

**superflat presets** -- [INFO](https://minecraft.gamepedia.com/Superflat#Multiplayer)
* World Types
  * Overworld
    * ```
        minecraft:bedrock,59*minecraft:stone,3*minecraft:dirt,minecraft:grass_block;minecraft:plains;stronghold,biome_1,village,decoration,dungeon,lake,mineshaft,lava_lake
        ```
  * Redstone
    * ```
        minecraft:bedrock,3*minecraft:stone,52*minecraft:sandstone
        ```
  * Customized -- [INFO](https://minecraft.gamepedia.com/Customized)
    * super-tweakable settings
  * AMPLIFIED
    * This reddit [post](https://www.reddit.com/r/Minecraft/comments/9lqko2/amplified_on_mc_113_server/e78p2pe?utm_source=share&utm_medium=web2x)
        says that generation settings are stored in `level.dat` and the file can be swapped into a server from SP with the same seed.
    * The webpag above on Customized types has this code which may be similar to amplified settings:
        ```json
            {"coordinateScale":684.412,"heightScale":684.412,"lowerLimitScale":512.0,"upperLimitScale":512.0,"depthNoiseScaleX":200.0,"depthNoiseScaleZ":200.0,"depthNoiseScaleExponent":0.5,"mainNoiseScaleX":80.0,"mainNoiseScaleY":160.0,"mainNoiseScaleZ":80.0,"baseSize":8.5,"stretchY":12.0,"biomeDepthWeight":2.0,"biomeDepthOffset":1.0,"biomeScaleWeight":4.0,"biomeScaleOffset":1.0,"seaLevel":63,"useCaves":true,"useDungeons":true,"dungeonChance":8,"useStrongholds":true,"useVillages":true,"useMineShafts":true,"useTemples":true,"useRavines":true,"useWaterLakes":true,"waterLakeChance":4,"useLavaLakes":true,"lavaLakeChance":80,"useLavaOceans":false,"fixedBiome":-1,"biomeSize":4,"riverSize":4,"dirtSize":33,"dirtCount":10,"dirtMinHeight":0,"dirtMaxHeight":256,"gravelSize":33,"gravelCount":8,"gravelMinHeight":0,"gravelMaxHeight":256,"graniteSize":33,"graniteCount":10,"graniteMinHeight":0,"graniteMaxHeight":80,"dioriteSize":33,"dioriteCount":10,"dioriteMinHeight":0,"dioriteMaxHeight":80,"andesiteSize":33,"andesiteCount":10,"andesiteMinHeight":0,"andesiteMaxHeight":80,"coalSize":17,"coalCount":20,"coalMinHeight":0,"coalMaxHeight":128,"ironSize":9,"ironCount":20,"ironMinHeight":0,"ironMaxHeight":64,"goldSize":9,"goldCount":2,"goldMinHeight":0,"goldMaxHeight":32,"redstoneSize":8,"redstoneCount":8,"redstoneMinHeight":0,"redstoneMaxHeight":16,"diamondSize":8,"diamondCount":1,"diamondMinHeight":0,"diamondMaxHeight":16,"lapisSize":7,"lapisCount":1,"lapisCenterHeight":16,"lapisSpread":16}`
        ```