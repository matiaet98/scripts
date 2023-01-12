#!/bin/bash

kubectl \
--context integration-singlestore \
--namespace singlestore \
port-forward \
service/svc-singlestore-cluster-int-ddl 3306:3306
