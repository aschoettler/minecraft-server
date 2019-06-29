FROM alpine
# MAINTAINER William Weiskopf <william@weiskopf.me>

ARG MC_VERSION

# Stable set up layer
RUN apk add --no-cache \
    openjdk8-jre \
    && mkdir -p /minecraft/config \
    && echo eula=true > /minecraft/config/eula.txt

# Using ADD here to ensure the cache in invalidated if BuildTools.jar changes
ADD https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar /minecraft_build/

# Build and clean up
# RUN set -x 
RUN apk add --no-cache \
    bash \
    && apk add --no-cache --virtual=build-dependencies \
    curl \
    git \
    && cd /minecraft_build \
    && java -Xmx1024M -jar /minecraft_build/BuildTools.jar --rev ${MC_VERSION} \
    && apk del build-dependencies \
    && mv /minecraft_build/spigot-*.jar /minecraft/spigot.jar \
    && rm -r /minecraft_build

WORKDIR /minecraft/config
VOLUME /minecraft/config

EXPOSE 25565
EXPOSE 25566

CMD java -Xmx2G -jar /minecraft/spigot.jar


