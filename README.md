# replace-me
## Table of contents
* [About](#about)
* [Prerequisites](#prerequisites)
* [Install](#install)
* [Usage](#usage)
* [Build](#build)
* [Deploy](#deploy)
* [Test](#test)
* [Contribute](#contribute)
### About
Base language agnostic repo template.
### Prerequisites
Tools to install: [git][g], [pre-commit][pk], and [detect-secrets][ds].

You can use [this][a] playbook for automated tools installation(Ubuntu only).
### Install
![create](docs/template_btn.png)

[Create][1] a new repo from this template.
### Usage
1. Clone your repo.
1. Find all `replace-me` strings in repo files and replace it with actual data.
1. Add your repo to tara.ai workspace. Instruction [here][2].
1. Add `automation` team to the repo admins
   ![release](docs/auth_setup.png)
1. Clean `About`, `Install` and `Usage` sections of this file :) and follow our [requirements][3] to complete setup. If you have a questions about secrets check hook - read [this][8] section from our `Secrets` Wiki document.

### Build
Release GitHub [workflow](.github/workflows/release.yml). Release commit types: `fix`, `feat`.

### Deploy
### Test
### Contribute
Commit message style - [Conventional Commits][cc].

[1]: https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template
[2]: https://docs.google.com/document/d/128c8Up40PFeZg2LaUkChC3hNv1139-VruFm_SC-ZJiU/edit#heading=h.jutu1mazqqgt
[3]: https://github.com/agblox/DiviAI-Information/wiki/Repos
[8]: https://github.com/agblox/DiviAI-Information/wiki/Secrets#pre-commit-hook

[g]: https://www.atlassian.com/git/tutorials/install-git
[pk]: https://pre-commit.com/#install
[a]: https://github.com/IaroslavR/ansible-role-server-bootstrap
[cc]: https://www.conventionalcommits.org/en/v1.0.0/
[ds]: https://github.com/Yelp/detect-secrets#installation
