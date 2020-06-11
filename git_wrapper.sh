#!/bin/bash

curpath=$(dirname $(realpath -s $BASH_SOURCE))

args=("$@")
x=(${args[@]//*[-=]*})
git_cmd="${x[0]}"

if [[ "$git_cmd" =~ ^(am|commit|rebase|checkout|clone|merge|pull|push|gc)$ ]]; then
  source $curpath/.conda_init
  conda_env=$("$curpath/find_conda_env.py")
  if [ -n "$conda_env" ]; then
      echo "Activating $conda_env..."
      conda activate "$conda_env"
  fi
fi

git "$@"
