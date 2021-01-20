#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports give/
poetry run isort --check --diff give/ tests/
poetry run black --check give/ tests/
poetry run flake8 give/ tests/
poetry run safety check
poetry run bandit -r give/
