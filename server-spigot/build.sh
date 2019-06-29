#!/bin/bash

# Build Spigot

MC_VERSION=1.13.2
docker build -t mc-spigot-${MC_VERSION} --build-arg MC_VERSION=${MC_VERSION} .

