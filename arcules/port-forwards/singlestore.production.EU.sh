#!/bin/bash

kubectl \
--context eu-singlestore \
--namespace memsql \
--address='0.0.0.0' \
port-forward \
service/svc-memsql-cluster-prod-ddl 3309:3306