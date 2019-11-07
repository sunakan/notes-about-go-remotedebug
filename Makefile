build:
	docker-compose build

ash:
	docker-compose run --rm --service-ports app ash

up:
	docker-compose up

down:
	docker-compose down

curl:
	curl http://localhost:8888

config:
	docker-compose config
