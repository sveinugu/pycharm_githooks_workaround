#!/bin/bash

source .conda_init

conda_env=$("./find_conda_env.py")

if [ -n "$conda_env" ]; then
    conda activate "$conda_env"
fi

git "$@"
