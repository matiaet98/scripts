#!/bin/bash

kubectl \
--context gke_arcules-rehersal_us-central1_db-singlestore \
--namespace singlestore \
port-forward \
service/svc-singlestore-cluster-int-ddl 3306:3306
