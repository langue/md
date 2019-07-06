#!/bin/bash

cd `dirname $0`

for targ in CPF-I CPF-D GPF-I 100_Expressions VPF-I;
do
  pipenv run mkdocs build -f ${targ}.yml
done
cp css/* docs/css/
git add . && git commit -m 'update documents.'
git push origin master
