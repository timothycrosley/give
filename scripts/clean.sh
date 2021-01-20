#!/bin/bash
set -euxo pipefail

poetry run isort give/ tests/
poetry run black give/ tests/
