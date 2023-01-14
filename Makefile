SHELL := /bin/bash
.DEFAULT_GOAL := help

start__frourio-sample: ## Start frourio-sample local container
	docker-compose -f docker-compose.yml -f docker-compose.override.frourio-sample.yml up -d

reload__frourio-sample: ## Reload frourio-sample local container
		docker-compose -f docker-compose.yml -f docker-compose.override.frourio-sample.yml up -d

# https://postd.cc/auto-documented-makefile/
help: ## Draw help message
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'