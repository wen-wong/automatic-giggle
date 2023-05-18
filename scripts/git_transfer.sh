#!/bin/bash

git remote set-url origin git@github.com:kiwiz-ca/kiwiz-mobile-app.git

for `git branch -r | grep -v \>`; do git checkout `basename $i`; done
