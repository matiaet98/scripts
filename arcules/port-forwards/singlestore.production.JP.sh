#!/bin/bash

kubectl \
--context jp-singlestore \
--namespace singlestore \
port-forward \
service/svc-singlestore-cluster-prod-jp-ddl 3310:3306