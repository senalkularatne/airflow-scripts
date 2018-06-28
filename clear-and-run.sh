#!/bin/bash
echo "Provide the dag_id of the dag you want to clear and rerun: "
read dag_id
airflow clear -u -d -c -sd ~/airflow/dags 
echo "---------------------------------------------"
echo "---------------- Cleared Dag ----------------"
echo "---------------------------------------------"
airflow trigger_dag s3_a_json_sensor
echo "---------------------------------------------"
echo "--------------- Dag is Running --------------"
echo "---------------------------------------------"
/usr/bin/open -a "/Applications/Google Chrome.app" "http://localhost:8080/admin/airflow/graph?dag_id=$dag_id"

