# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git hooks within the same conda environment as the project

## Installation

- `ln -s .conda_init $HOME/.conda_init`
- `ln -s .pycharm_bashenv $HOME/.pycharm_bashenv`
- `ln -s find_conda_env.py $HOME/find_conda_env.py`
- `ln -s PyCharm $HOME/bin/PyCharm`

## Use
Open PyCharm using the `PyCharm` script, and: Hey presto!

## Note
The git-hooks script must use a `bash` hashbang, e.g. `#!/usr/bin/env bash`.
