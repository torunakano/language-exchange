.PHONY: run
run:
	cp .env.dev.sample .env.dev
	docker-compose run --rm web rails db:create
	docker-compose run --rm web rails db:migrate
