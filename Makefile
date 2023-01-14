SHELL := /bin/bash
.DEFAULT_GOAL := help

start__frourio-sample: ## Start frourio-sample local container
	sh bin/frourio_sample.sh 

# https://postd.cc/auto-documented-makefile/
help: ## Draw help message
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'