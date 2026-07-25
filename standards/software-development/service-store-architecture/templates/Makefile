SHELL := /bin/sh

DEV := docker compose -f compose.yml -f compose.dev.yml
PROD := docker compose -f compose.yml -f compose.prod.yml

.PHONY: install build up down restart logs shell node test format analyse tools-up tools-down migrate seed build-prod up-prod down-prod

install:
	@test -f .env || cp .env.example .env
	$(DEV) build
	$(DEV) up -d
	$(DEV) exec app sh ./scripts/install.sh

build:
	$(DEV) build

up:
	$(DEV) up -d

down:
	$(DEV) down

restart:
	$(DEV) restart

logs:
	$(DEV) logs -f

shell:
	$(DEV) exec app sh

node:
	$(DEV) exec node sh

test:
	$(DEV) exec app sh ./scripts/test.sh

format:
	$(DEV) exec app vendor/bin/pint

analyse:
	$(DEV) exec app vendor/bin/phpstan analyse

migrate:
	$(DEV) exec app php artisan migrate

seed:
	$(DEV) exec app php artisan db:seed

tools-up:
	$(DEV) --profile tools up -d phpmyadmin

tools-down:
	$(DEV) --profile tools stop phpmyadmin

build-prod:
	$(PROD) build

up-prod:
	$(PROD) up -d

down-prod:
	$(PROD) down
