AIRFLOW_VERSION = 1.10.14

build:
	docker build -t airflow:${AIRFLOW_VERSION} --build-arg AIRFLOW_VERSION=${AIRFLOW_VERSION} .

init:
	docker compose run webserver db init
	docker compose run webserver users create --username admin --firstname Admin --lastname Adm --role Admin --email admin@example.com

start:
	docker compose up

stop:
	docker compose down