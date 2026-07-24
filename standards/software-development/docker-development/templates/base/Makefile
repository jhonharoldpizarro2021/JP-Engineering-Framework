SHELL := /bin/sh

COMPOSE_DEV := docker compose -f compose.yml -f compose.dev.yml
COMPOSE_PROD := docker compose -f compose.yml -f compose.prod.yml
SERVICE := app

.PHONY: build up down restart logs shell install test build-prod up-prod down-prod

build:
	$(COMPOSE_DEV) build

up:
	$(COMPOSE_DEV) up -d

down:
	$(COMPOSE_DEV) down

restart:
	$(COMPOSE_DEV) restart

logs:
	$(COMPOSE_DEV) logs -f

shell:
	$(COMPOSE_DEV) exec $(SERVICE) sh

install:
	@test -f .env || cp .env.example .env
	$(COMPOSE_DEV) build
	$(COMPOSE_DEV) up -d
	$(COMPOSE_DEV) exec $(SERVICE) sh ./scripts/install.sh
	$(COMPOSE_DEV) exec $(SERVICE) sh ./scripts/init.sh

test:
	$(COMPOSE_DEV) exec $(SERVICE) sh ./scripts/test.sh

build-prod:
	$(COMPOSE_PROD) build

up-prod:
	$(COMPOSE_PROD) up -d

down-prod:
	$(COMPOSE_PROD) down
