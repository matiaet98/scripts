#!/bin/bash

kubectl \
--context integration-cluster \
--namespace integration \
port-forward \
service/msthumbnailservice 20180:80
