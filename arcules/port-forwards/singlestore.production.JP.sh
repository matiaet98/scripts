#!/bin/bash

kubectl \
--context gke_arcules-prod-jp-fde95641_asia-northeast1_db-singlestore \
--namespace singlestore \
port-forward \
service/svc-singlestore-cluster-prod-jp-ddl 3310:3306