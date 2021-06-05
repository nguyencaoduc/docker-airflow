AIRFLOW_VERSION = 2.1.0-python3.7

build:
	docker build -t airflow:${AIRFLOW_VERSION} --build-arg AIRFLOW_VERSION=${AIRFLOW_VERSION} .

init:
	mkdir -p .pgdata-${AIRFLOW_VERSION}
	AIRFLOW_VERSION=${AIRFLOW_VERSION} docker compose run webserver db init
	AIRFLOW_VERSION=${AIRFLOW_VERSION} docker compose run webserver users create --username admin --firstname Admin --lastname Adm --role Admin --email admin@example.com

start:
	AIRFLOW_VERSION=${AIRFLOW_VERSION} docker compose up

stop:
	AIRFLOW_VERSION=${AIRFLOW_VERSION} docker compose down