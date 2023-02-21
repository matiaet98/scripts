#!/bin/bash

kubectl \
--context jp-singlestore \
--namespace singlestore \
--address='0.0.0.0' \
port-forward \
service/svc-singlestore-cluster-prod-jp-ddl 3310:3306