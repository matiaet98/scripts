#!/bin/bash

kubectl \
--context integration-cluster \
--namespace integration \
port-forward \
service/msuniteddms 20180:80
