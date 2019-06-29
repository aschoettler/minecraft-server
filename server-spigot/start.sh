#!/bin/bash

MC_VERSION=1.13.2

mkdir -p ./config
if [ ! -f ./config/eula.txt ]; then
    echo eula=true > ./config/eula.txt
fi

CONTAINER_NAME='mc'

docker run --rm -it --name $CONTAINER_NAME \
            -p "25565:25565" \
            -p "25567:25567" \
            -v $PWD/config:/minecraft/config \
            mc-spigot-${MC_VERSION}

# jump into server
# docker attach mc

# stop server
# docker exec mc rcon-cli stop


# bash -c "docker exec -i mc rcon-cli"
