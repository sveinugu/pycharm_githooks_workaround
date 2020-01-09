# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git hooks within the same conda environment as the project

## Installation

- `ln -sf "$(realpath .conda_init)" $HOME/.conda_init`
- `ln -sf "$(realpath .pycharm_bashenv)" $HOME/.pycharm_bashenv`
- `ln -sf "$(realpath find_conda_env.py)" $HOME/bin/find_conda_env.py`
- `ln -sf "$(realpath PyCharm)" $HOME/bin/PyCharm`

## Use
Open PyCharm using the `PyCharm` script, and: Hey presto!

## Note
The git-hooks script must use a `bash` hashbang, e.g. `#!/usr/bin/env bash`.
