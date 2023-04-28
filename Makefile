install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements/requirements-aws.txt


install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements/requirements-azure.txt

install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements/requirements-gcp.txt

format:
	black *.py
	black tests/*.py


lint:
	pylint --disable=R,C *.py


test:
	python -m pytest -vv --cov=hello tests/test_*.py


all: install-aws lint test