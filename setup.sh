#!/usr/bin/env sh

cur=$(dirname "$0")
declare -a cmds=("mkdir $HOME/bin"
                 "ln -sf $(realpath $cur/.conda_init) $HOME/.conda_init"
                 "ln -sf $(realpath $cur/.pycharm_bashenv) $HOME/.pycharm_bashenv"
                 "ln -sf $(realpath $cur/find_conda_env.py) $HOME/bin/find_conda_env.py"
                 "ln -sf $(realpath $cur/PyCharm) $HOME/bin/PyCharm")

for cmd in "${cmds[@]}"
do
  echo "$cmd"
  eval "$cmd"
done
