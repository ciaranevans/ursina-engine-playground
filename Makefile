.PHONEY: install install-dev play lint format

# SYSTEM_VERSION_COMPAT=1 is required till Pipenv upgrades
# their `packaging` module: https://github.com/panda3d/panda3d/issues/1145#issuecomment-817152696 

install:
	SYSTEM_VERSION_COMPAT=1 pipenv install

install-dev:
	SYSTEM_VERSION_COMPAT=1 pipenv install --dev

play:
	pipenv run python3 game/main.py

lint:
	pipenv run flake8 game/
	pipenv run isort --check-only --profile black game/
	pipenv run black --check --diff game/

format:
	pipenv run isort --profile black game/
	pipenv run black game/
