all: install lint play

.PHONY: install
install:
	poetry install --no-dev

.PHONY: install-dev
install-dev:
	poetry install

.PHONY: play
play:
	poetry run python3 game/main.py

.PHONY: lint
lint:
	poetry run flake8 game/
	poetry run isort --check-only --profile black game/
	poetry run black --check --diff game/

.PHONY: fmt format
fmt: format
format:
	poetry run isort --profile black game/
	poetry run black game/
