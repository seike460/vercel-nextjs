start: ## yarn run start
	yarn run start
build: clean ## yarn run build
	yarn run build
prettier: ## prettier --write pages
	prettier --write pages
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help
clean: ## rm -rf build
	rm -rf build

.DEFAULT_GOAL := start
