#!/bin/bash

kubectl \
--context integration-singlestore \
--namespace singlestore \
--address='0.0.0.0' \
port-forward \
service/svc-singlestore-cluster-int-ddl 3306:3306
