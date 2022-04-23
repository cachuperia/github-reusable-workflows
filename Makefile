SHELL = /bin/bash
.DEFAULT_GOAL = help

##@ Bootstrap
.PHONY: repo-init init

repo-init:  ## Install pre-commit in repo
	pre-commit install -t pre-commit -t commit-msg

init: repo-init  ## All Init steps at once

##@ Checks
.PHONY: check

check:  ## Run pre-commit against all files
	pre-commit run --all-files

##@ Miscellaneous
.PHONY: secrets-baseline-create secrets-baseline-audit secrets-update

secrets-baseline-create:  ## Create/update .secrets.baseline file
	poetry run detect-secrets scan --baseline .secrets.baseline

secrets-baseline-audit:  ## Check updated .secrets.baseline file
	poetry run detect-secrets audit .secrets.baseline
	git commit .secrets.baseline --no-verify -m "build(security): update secrets.baseline"

secrets-update: secrets-baseline-create secrets-baseline-audit ## Update secrets

##@ Helpers
.PHONY: help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
