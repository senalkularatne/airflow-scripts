#!/bin/bash
airflow clear -u -d -c -sd ~/airflow/dags s3_a_json_sensor
echo "-------- Cleared Dag -------- "
airflow trigger_dag s3_a_json_sensor
echo "------  Task is Running ------ "