# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git hooks within the same conda environment as the project

## Setup:

PyCharm->Preferences->Version Control->git->Path to git executable: Select `git_wrapper.sh`.

## Note

The git-hooks script must use a `bash` hashbang, e.g. `#!/usr/bin/env bash`.
