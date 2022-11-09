#!/bin/bash

kubectl \
--context gke_arcules-rehersal_us-central1-c_db-memsql \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-int-ddl 3306:3306