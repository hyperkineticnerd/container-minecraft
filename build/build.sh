#!/bin/bash

declare mc_version=1.18.2

podman build \
    -t quay.io/hyperkineticnerd/java:17-minecraft \
    -f Containerfile.java-17 .
podman build \
    -t quay.io/hyperkineticnerd/java:11-minecraft \
    -f Containerfile.java-11 .
podman build \
    -t quay.io/hyperkineticnerd/java:8-minecraft \
    -f Containerfile.java-8 .
podman build \
    -t quay.io/hyperkineticnerd/minecraft:${mc_version}-fabric \
    -f Containerfile.fabric .
podman build \
    -t quay.io/hyperkineticnerd/minecraft:${mc_version}-shadowman \
    -f Containerfile.shadowman .
