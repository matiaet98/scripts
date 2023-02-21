#!/bin/bash

kubectl --context \
us-singlestore \
--namespace memsql \
--address='0.0.0.0' \
port-forward \
service/svc-memsql-cluster-prod-us-ddl 3308:3306
