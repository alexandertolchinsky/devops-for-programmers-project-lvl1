start:
	docker-compose up
ci:
	make prepare-env
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
build:
	docker-compose -f docker-compose.yml build app
install:
	docker-compose run --rm  app npm ci
prepare-env:
	cp ./app/.env.example ./.env
