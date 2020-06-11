# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git hooks within the same conda environment as the project

## New solution:

PyCharm->Preferences->Version Control->git->Path to git executable: Select `git_wrapper.sh`.

## Old solution:

### Installation

- `sh setup.sh`

### Use
Open PyCharm using the `PyCharm` script, and: Hey presto!

## Note (both solutions)
The git-hooks script must use a `bash` hashbang, e.g. `#!/usr/bin/env bash`.
