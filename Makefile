install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt


install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt

format:
	black *.py


lint:
	pylint --disable=R,C *.py


test:
	python -m pytest -vv --cov=hello test_*.py
#	python -m pytest -vv --cov=hello test_sort-program.py


all: install-aws lint test