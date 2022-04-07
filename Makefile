SHELL = /bin/bash

.PHONY: help repo-init check secrets-baseline-create secrets-baseline-audit

.DEFAULT_GOAL = help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

repo-init:  ## Install pre-commit in repo
	pre-commit install

check:  ## Run pre-commit against all files
	pre-commit run --all-files

secrets-baseline-create:  ## Update .secrets.baseline file
	detect-secrets scan --baseline .secrets.baseline

secrets-baseline-audit:  ## Check and commit updated .secrets.baseline file
	detect-secrets audit .secrets.baseline
	git commit .secrets.baseline --no-verify -m "build(security): update secrets.baseline"
