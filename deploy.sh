#!/bin/bash

cd `dirname $0`
pipenv run mkdocs build -f GPF-I.yml
pipenv run mkdocs build -f CPF-D.yml
cp css/* docs/css/
pipenv run sphinx-build -b html source docs
git add . && git commit -m 'update documents.'
git push origin master
