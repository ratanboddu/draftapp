.PHONY: clean pip install run gunicorn db-migrate db-upgrade db-downgrade db db-init docker test lint black

clean:
	find . -type f -name "*.pyc" -delete
	find . -type f -name "*.log" -delete
	find . -type f -name "coverage.xml" -delete
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type d -name build -exec rm -rf {} +
	find . -type d -name dist -exec rm -rf {} +

pip:
	PIP_CONFIG_FILE=$(PWD)/pip.conf \
	pip install -e .
	PIP_CONFIG_FILE=$(PWD)/pip.conf \
	pip install pytest pytest-cov black importanize pre-commit

install: pip
	pre-commit install

run:
	SETTINGS=$(PWD)/configs/local.ini FLASK_APP=project_name \
	FLASK_DEBUG=1 \
	flask run

gunicorn:
	SETTINGS=$(PWD)/configs/local.ini \
	$(PWD)/bin/project_name-cli gunicorn

db-migrate:
	SETTINGS=$(PWD)/configs/local.ini \
	alembic revision --autogenerate

db-upgrade:
	SETTINGS=$(PWD)/configs/local.ini \
	alembic upgrade head

db-downgrade:
	SETTINGS=$(PWD)/configs/local.ini \
	alembic downgrade -1

db:
	SETTINGS=$(PWD)/configs/local.ini \
	alembic upgrade head

db-init:
	SETTINGS=$(PWD)/configs/local.ini \
	alembic init alembic

docker:
	docker build -t application:v1.0.0 .

test:
	SETTINGS=$(PWD)/configs/test.ini \
	pytest --verbose --color=yes --cov=project_name --assert=plain --cov-report xml:coverage.xml --cov-report term-missing

lint:
	cd project_name && python ../lint.py project_name

black:
	python -m black project_name
