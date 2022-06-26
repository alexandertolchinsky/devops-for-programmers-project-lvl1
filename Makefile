start:
	docker-compose up
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
build:
	docker-compose -f docker-compose.yml build app
install:
	docker-compose run --rm  app npm ci
