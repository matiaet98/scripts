#!/bin/bash

kubectl \
--context eu-singlestore \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-prod-ddl 3309:3306