#!/bin/bash

kubectl --context \
gke_arcules-concert_us-central1-c_db-memsql \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-prod-us-ddl 3308:3306