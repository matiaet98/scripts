# No hace falta decirle por que columna paralelizar ni cuanto de fetchsize, lo piensa solo

sqoop import \
-Doraoop.timestamp.string=false \
--direct \
--verbose \
--connect jdbc:oracle:thin:@//11.0.0.2:1521/FISCO \
--delete-target-dir \
--username TEST \
--password TEST \
--table MEASURES2 \
--as-parquetfile \
--num-mappers 10 \
--target-dir /user/hdfs/measures2