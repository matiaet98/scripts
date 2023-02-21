#!/bin/bash

while true
do
  /bin/bash ./singlestore.integration.sh > /dev/null 2>&1 & 
  /bin/bash ./singlestore.preview.sh > /dev/null 2>&1 &
  /bin/bash ./singlestore.production.EU.sh > /dev/null 2>&1 &
  /bin/bash ./singlestore.production.US.sh > /dev/null 2>&1 &
  /bin/bash ./singlestore.production.JP.sh > /dev/null 2>&1 &
  sleep 60
done