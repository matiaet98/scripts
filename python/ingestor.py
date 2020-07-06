from pyspark.sql import SparkSession

spark = SparkSession.builder.enableHiveSupport().getOrCreate()

spark.sql('drop table if exists default.supa_a_caracterizacion_actividad')

df = spark \
    .read \
    .format('jdbc') \
    .option('url', 'jdbc:oracle:thin:@10.30.205.101:1521/PADR') \
    .option('user', 'puc_consulta') \
    .option('password','puc_consulta') \
    .option('driver', 'oracle.jdbc.driver.OracleDriver') \
    .option('dbtable', '(SELECT * FROM SUPA.A_CARACTERIZACION_ACTIVIDAD)') \
    .load()
    
df.write \
    .format('parquet') \
    .mode('overwrite') \
    .saveAsTable('default.supa_a_caracterizacion_actividad')

