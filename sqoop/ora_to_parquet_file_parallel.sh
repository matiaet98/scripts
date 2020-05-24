# Solo se puede en parallel con numbers, fechas y timestamps.

sqoop import \
--connect jdbc:oracle:thin:@//11.0.0.2:1521/FISCO.matinet \
--delete-target-dir \
--username TEST \
--password TEST \
--table MEASURES \
--num-mappers 16 \
--as-parquetfile \
--split-by capturedtime \
--target-dir /user/hdfs/measures
