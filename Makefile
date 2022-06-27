#
# Makefile to build and upload to local pypi servers.
# To upload to pypi.org use plain twine upload.
#

repo=localhost
user=pypiadmin
password=pypiadmin

clean:
	rm -rf dist/*
	rm -rf *.egg-info
	rm -rf build

install:
	make clean
	python -m pip install -U pip
	pip install -U -r requirements-dev.txt

build:
	make clean
	python setup.py bdist_wheel

upload:
	make build
	twine upload --repository-url http://$(repo):8036 --user $(user) --password $(password) dist/*
