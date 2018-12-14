#!/bin/bash

pipenv run mkdocs build
git add . && git commit -m 'update documents.'
git push origin master
