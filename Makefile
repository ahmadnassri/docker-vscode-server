#!/usr/bin/make

# --------------------------------------------- #
# Note: this file originates in template-docker #
# --------------------------------------------- #

pull: ## pull latest containers
	@docker compose pull

lint: clean ## run mega-linter
	@docker compose run --rm lint

readme: ## generate root README.md
	@docker compose run --rm readme

build: clean ## start the project in background
	@docker compose build --no-cache app

start: ## start the project in foreground
	@docker compose up --renew-anon-volumes app

stop: ## stop all running containers
	@docker compose down --remove-orphans --volumes --rmi local


shell: ## start the container shell
	@docker compose run --rm --entrypoint /bin/sh app

clean: stop ## delete containers, images, volumes, node_modules
	@docker compose run --rm --entrypoint "rm -rf node_modules" app
	@docker compose rm --stop --force --volumes
	@docker compose down --remove-orphans --volumes --rmi local

# Utility methods
## Help: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

help: ## display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help
.PHONY: help all clean test
