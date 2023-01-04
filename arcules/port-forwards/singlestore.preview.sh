#!/bin/bash

kubectl \
--context gke_arcules-preview_us-central1-c_db-memsql \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-preview-ddl 3307:3306