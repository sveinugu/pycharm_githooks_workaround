# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git hooks within the same conda environment as the project

## Installation

- `sh setup.sh`

## Use
Open PyCharm using the `PyCharm` script, and: Hey presto!

## Note
The git-hooks script must use a `bash` hashbang, e.g. `#!/usr/bin/env bash`.
