#!/bin/bash

pod=$(kubectl --context gke_arcules-rehersal_us-central1-b_cluster-bandpractice --namespace integration get pods | egrep -i 'msinsights-.*-.*' | head -n 1 | awk '{print $1}')

kubectl 
--context gke_arcules-rehersal_us-central1-b_cluster-bandpractice \
--namespace integration \
port-forward \
${pod} ${port}:5433
