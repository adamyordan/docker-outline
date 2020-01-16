build:
	docker-compose build --pull outline
	docker-compose up -d redis postgres s3
	docker-compose run --rm outline /bin/sh -c "yarn && yarn sequelize db:migrate --env production"
	docker-compose stop

up:
	docker-compose up -d

down:
	docker-compose stop

destroy:
	docker-compose stop
	docker-compose rm -f

.PHONY: up down build destroy
