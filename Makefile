#
# Makefile to build and upload to local pypi servers.
# To upload to pypi.org use github actions.
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
	pip install -U -r requirements.txt

build:
	make clean
	python -m build . --wheel

upload:
	make build
	twine upload --repository-url http://$(repo):8036 --user $(user) --password $(password) dist/*
