#!/bin/bash

kubectl \
--context gke_arcules-rehersal_us-central1-b_cluster-bandpractice \
--namespace integration \
port-forward \
service/msthumbnailservice 20180:80
