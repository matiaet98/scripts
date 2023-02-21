#!/bin/bash

kubectl \
--context integration-cluster \
--namespace integration \
--address='0.0.0.0' \
port-forward \
service/msthumbnailservice 20180:80
