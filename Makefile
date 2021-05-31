build:
	docker compose build

init:
	docker compose up postgres &
	docker compose run webserver db init
	docker compose run webserver users create --username admin --firstname Admin --lastname Adm --role Admin --email admin@example.com

start:
	docker compose up

stop:
	docker compose down