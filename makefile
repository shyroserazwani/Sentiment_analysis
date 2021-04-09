setup:
	python3 -m venv ~/.sentiment

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=sentimentlib tests/*.py

lint:
	pylint --disable=R,C sentimentlib

all: install lint test
