#!/bin/bash

kubectl \
--context integration-cluster \
--namespace integration \
port-forward \
service/msvideosearch 3000:80
