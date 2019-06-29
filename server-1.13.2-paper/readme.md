## Description
This is all you need to run a paper minecraft server for version 1.13.2 with some nice mods.
All Bukkit / Spigot plugins will work on this paper server as long as they work with version 1.13.2 and with each other.
The following plugins are included:
* FAWE (Fast Asynchronus World Edit)
* FAVS (Fast Asynchronus Voxel Sniper)
* WorldEditSelectionVisualizer

The file `build.sh` contains a few notes on what generally needs to happen to run a paper server.
It contains no actual code.

## Instructions
* install docker
* Run `build.sh`
* run `start.sh` once, then stop the server
* add the contents of `plugins` into the server's `config/plugins` folder
* run `start.sh` to run the server

