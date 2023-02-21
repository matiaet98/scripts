#!/bin/bash

kubectl \
--context preview-singlestore \
--namespace memsql \
--address='0.0.0.0' \
port-forward \
service/svc-memsql-cluster-preview-ddl 3307:3306