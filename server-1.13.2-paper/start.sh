#!/bin/sh

# absolute path to config directory

mkdir -p ./config
if [ ! -f ./config/eula.txt ]; then
    echo eula=TRUE > ./config/eula.txt
fi

CONFIG_DIR="$PWD/config"

# absolute path to paper jar
PROG="$PWD/paper/paper-1.13.jar"

docker run --rm -it \
  --name mc \
  --workdir=/minecraft/config \
  -v $PWD/config:/minecraft/config \
  -v $PROG:/bin/paper.jar \
  -p "25565:25565" \
  -p "25567:25567" \
  openjdk:8-jre-alpine java -Xmx4G -Xms4G -jar /bin/paper.jar


