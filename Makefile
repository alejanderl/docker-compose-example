ifeq ($(NIX_TYPE),Linux)
	SED_OPTS = -i
endif

ifeq ($(NIX_TYPE),Darwin)
	SED_OPTS = -i ""
endif


.PHONY: shell
shell: ## access to the system console
	docker-compose run --rm app bash

.PHONY: console
console: ## access to the app console
	docker-compose run --rm app bin/console

.PHONY: docker_stop_all
docker_stop_all:
	docker ps -q | xargs -r docker stop

.PHONY: down
down:
	docker-compose down

.PHONY: up
up:
	docker-compose up

.PHONY: build
build:
	docker-compose build

.PHONY: shell-existing
shell-existing: ## access to the system console
	docker-compose exec app bash

.PHONY: top
top: ## access to an existing container's system console
	docker-compose exec app top
