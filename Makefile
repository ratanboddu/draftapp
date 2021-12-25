.PHONY: clean pip install black

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
	pip install black pre-commit

install: pip
	pre-commit install

black:
	python -m black draftapp
