#!/bin/bash
echo "Provide the dag_id of the dag you want to clear and rerun: "
read dag_id
airflow clear -u -d -c -sd ~/airflow/dags $dag_id
echo "--------------------------------------------- "
echo "---------------- Cleared Dag ---------------- "
echo "--------------------------------------------- "
airflow trigger_dag s3_a_json_sensor
echo "--------------------------------------------- "
echo "-------------- Dag is Running -------------- "
echo "--------------------------------------------- "
