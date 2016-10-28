#!/usr/bin/env bash

PIO_FS_BASEDIR=${HOME}/.pio_store
PIO_FS_ENGINESDIR=${PIO_FS_BASEDIR}/engines
PIO_FS_TMPDIR=${PIO_FS_BASEDIR}/tmp

SPARK_HOME=${PIO_HOME}/vendors/spark-${SPARK_VERSION}-bin-hadoop2.6

HBASE_CONF_DIR=${PIO_HOME}/vendors/hbase-${HBASE_VERSION}/conf

PIO_STORAGE_REPOSITORIES_METADATA_NAME=pio_meta
PIO_STORAGE_REPOSITORIES_METADATA_SOURCE=MYSQL
PIO_STORAGE_REPOSITORIES_EVENTDATA_NAME=pio_event
PIO_STORAGE_REPOSITORIES_EVENTDATA_SOURCE=MYSQL
PIO_STORAGE_REPOSITORIES_MODELDATA_NAME=pio_model
PIO_STORAGE_REPOSITORIES_MODELDATA_SOURCE=MYSQL

PIO_STORAGE_SOURCES_MYSQL_TYPE=jdbc
PIO_STORAGE_SOURCES_MYSQL_URL=jdbc:mysql://mysql-predictionio.default.svc.cluster.local:3306/pio
PIO_STORAGE_SOURCES_MYSQL_USERNAME=root
PIO_STORAGE_SOURCES_MYSQL_PASSWORD=yourpassword