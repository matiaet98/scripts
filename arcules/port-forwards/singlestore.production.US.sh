#!/bin/bash

kubectl --context \
us-singlestore \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-prod-us-ddl 3308:3306
