#!/bin/bash
podman build \
    -t quay.io/hyperkineticnerd/minecraft:1.18.2-fabric \
    -f Dockerfile.fabric .
podman build \
    -t quay.io/hyperkineticnerd/minecraft:1.18.2-shadowman \
    -f Dockerfile.shadowman .
