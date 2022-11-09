#!/bin/bash

kubectl \
--context gke_arc-eu-primary-cluster_europe-west1-b_db-memsql \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-prod-ddl 3309:3306