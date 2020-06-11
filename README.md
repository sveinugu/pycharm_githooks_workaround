# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git-hooks within the same Conda environment that is selected the 
PyCharm project.

Only activates the Conda environment if PyCharm runs a git command that might be connected to a 
git-hook. This speeds up common PyCharm git command significantly. 

## Requirements:

- **Platform:** MacOS (but the scripts might work also on other platforms).
- **Shell:** `bash`
- Python v2 or v3

## Setup:

PyCharm->Preferences->Version Control->git->Path to git executable: Select `git_wrapper.sh`. Can 
be set up globally (for all projects).

