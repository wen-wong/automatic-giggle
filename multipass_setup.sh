#!/bin/bash

path=./scripts


# Vim Setup
chmod u+x ${path}/vim_setup.sh
./${path}/vim_setup.sh

# Git Setup
chmod u+x ${path}/git_setup.sh
./${path}/git_setup.sh

# Node Setup
chmod u+x ${path}/node_setup.sh
./${path}/node_setup.sh

