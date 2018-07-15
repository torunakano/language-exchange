.PHONY: start
start:
	cp .env.dev.sample .env.dev
	docker-compose build
	docker-compose up

.PHONY: run
run:
	cp .env.dev.sample .env.dev
	docker-compose run --rm web rails db:create
	docker-compose run --rm web rails db:migrate
