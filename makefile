.PHONY: help run
.DEFAULT_GOAL := help

run: ## fulutter run
	fvm flutter run --dart-define-from-file=dart_defines/develop.json

gen: ## Generate files
	fvm flutter pub run build_runner build --delete-conflicting-outputs

pubget: ## fulutter pub get
	fvm flutter pub get

analyze: ## fulutter analyze
	fvm flutter analyze 

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'