# github-reusable-workflows

![checks][ch] ![release][r]

## Table of contents
* [About](#about)
* [Prerequisites](#prerequisites)
* [Usage](#usage)
* [CD/CI](#cdci)
* [Contribute](#contribute)

## About

Shared GitHub workflows. Inspired by [Musings on GitHub Actions Reusable Workflows](https://colinsalmcorner.com/musings-on-reusable-workflows/)

### Available workflows

Pay attention, if `inputs.asdf == true`, `Makefile` target `asdf` will be called for plugins setup.

- `approve.yml` Approve by machine user.
- `commitlint.yml` Check commit messages.
- `pre-commit.yml` Run `pre-commit`.
- `publish.yml` Push artifacts to the storage(ECR or S3). Makefile target - `push-artifacts`.
- `pytest.yml` Run tests. `Makefile` targets - `test` and `test-integration`.
- `release-workflow.yml` Publish release.
- `status-to-slack.yml` Send workflow status to `slack`.

## Prerequisites

Tools to install: [git][g], [pre-commit][pk], and [detect-secrets][ds].

You can use [this][a] playbook for automated tools installation(Ubuntu only).

## Usage

Run `make` for list all available targets.

### Setup local environment

- `git clone git@github.com:cachuperia/github-reusable-workflows.git`
- `cd github-reusable-workflows`
- `make init`

## CD/CI

- `check` GitHub [workflow][wch].
- `release` GitHub [workflow][wr]. Release commit types: `fix`, `feat`.

## Contribute

Commit message style - [Conventional Commits][cc].

[g]: https://www.atlassian.com/git/tutorials/install-git
[pk]: https://pre-commit.com/#install
[a]: https://github.com/IaroslavR/ansible-role-server-bootstrap
[cc]: https://www.conventionalcommits.org/en/v1.0.0/
[ds]: https://github.com/Yelp/detect-secrets#installation

[wch]: .github/workflows/checks.yml
[wr]: .github/workflows/release.yml

[ch]: https://github.com/cachuperia/github-reusable-workflows/actions/workflows/checks.yml/badge.svg
[r]: https://github.com/cachuperia/github-reusable-workflows/actions/workflows/release.yml/badge.svg
