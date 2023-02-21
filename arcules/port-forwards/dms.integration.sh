#!/bin/bash

kubectl \
--context integration-cluster \
--namespace integration \
--address='0.0.0.0' \
port-forward \
service/msuniteddms 20180:80
