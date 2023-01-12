#!/bin/bash

kubectl \
--context preview-singlestore \
--namespace memsql \
port-forward \
service/svc-memsql-cluster-preview-ddl 3307:3306