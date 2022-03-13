#!/bin/bash
podman run \
    -it --name shadowman2 \
    -p 25565:25565/tcp \
    -p 24454:24454/udp \
    quay.io/hyperkineticnerd/minecraft:1.18.2-shadowman
