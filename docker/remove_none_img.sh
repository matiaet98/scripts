#!/bin/bash

untagged_images=`docker images -f "dangling=true" -q`

docker rmi $untagged_images
