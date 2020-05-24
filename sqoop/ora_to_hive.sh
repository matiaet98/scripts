#!/bin/bash

sqoop import \
--connect jdbc:oracle:thin:@//11.0.0.2:1521/FISCO.matinet \
--delete-target-dir \
--username TEST \
--password TEST \
--table MEASURES \
--hive-import \
--hive-overwrite \
--num-mappers 1 \
--hive-database raw \
--hive-table measures
