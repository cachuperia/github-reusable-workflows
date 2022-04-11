# github-reusable-workflows

![checks][checks] ![release][release]

## Table of contents
* [About](#about)
* [Prerequisites](#prerequisites)
* [Usage](#usage)
* [Build](#build)
* [Deploy](#deploy)
* [Test](#test)
* [Contribute](#contribute)

## About

Shared GitHub workflows. Inspired by [Musings on GitHub Actions Reusable Workflows](https://colinsalmcorner.com/musings-on-reusable-workflows/)
- `approve.yml` Approve by machine user.
- `commitlint.yml` Check commit messages.
- `pre-commit.yml` `pre-commit` without additional tools.
- `pre-commit-terraform-module.yml`: `pre-commit`, `terraform`, `terraform-docs` and `tflint`.
- `pytest-unit.yml` Run unit tests.
- `release-workflow.yml` Publish release.
- `status-to-slack.yml` Send workflow status to `slack`.

## Prerequisites

Tools to install: [git][g], [pre-commit][pk], and [detect-secrets][ds].

You can use [this][a] playbook for automated tools installation(Ubuntu only).

## Usage

Run `make` for list all available targets.

### Setup local environment

- `git clone git@github.com:agblox/github-reusable-workflows.git`
- `cd github-reusable-workflows`
- `make repo-init`

## Build

Release GitHub [workflow](.github/workflows/release.yml). Release commit types: `fix`, `feat`.

## Deploy

## Test

## Contribute

Commit message style - [Conventional Commits][cc].

[g]: https://www.atlassian.com/git/tutorials/install-git
[pk]: https://pre-commit.com/#install
[a]: https://github.com/IaroslavR/ansible-role-server-bootstrap
[cc]: https://www.conventionalcommits.org/en/v1.0.0/
[ds]: https://github.com/Yelp/detect-secrets#installation

[checks]: https://github.com/agblox/github-reusable-workflows/actions/workflows/checks.yml/badge.svg
[release]: https://github.com/agblox/github-reusable-workflows/actions/workflows/release.yml/badge.svg
