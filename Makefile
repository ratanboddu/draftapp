.PHONY: pip install black

pip:
	PIP_CONFIG_FILE=$(PWD)/pip.conf \
	pip install -e .
	PIP_CONFIG_FILE=$(PWD)/pip.conf \
	pip install black pre-commit

install: pip
	pre-commit install

black:
	python -m black draftapp
