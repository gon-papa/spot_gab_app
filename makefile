.PHONY: help run
.DEFAULT_GOAL := help

run: ## fulutter run
	fvm flutter run --dart-define-from-file=dart_defines/develop.json

gen: ## Generate files
	fvm flutter pub run build_runner build --delete-conflicting-outputs
	fvm flutter pub get

pubget: ## fulutter pub get
	fvm flutter pub get

analyze: ## fulutter analyze
	fvm flutter analyze 

openapi: ## Generate openapi
	curl http://127.0.0.1:8000/openapi.json -o openapi.json

schema: ## Generate schema
	make openapi
	rm -rf lib/gen/openapi
	docker run --rm -v ${PWD}:/local \
	openapitools/openapi-generator-cli:latest generate \
	-i /local/openapi.json \
	-g dart-dio \
	-o /local/lib/gen/openapi
	cd lib/gen/openapi/ && \
	fvm flutter pub run build_runner build --delete-conflicting-outputs


help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'