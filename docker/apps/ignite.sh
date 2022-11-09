#!/bin/bash

docker volume create ignite-vol

docker run -d \
    -v ignite-vol:/storage \
    -p 10800:10800 \
    -e IGNITE_WORK_DIR=/storage \
    --name apache-ignite \
    apacheignite/ignite:latest
