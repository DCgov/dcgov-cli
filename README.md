# The DCgov Command

This is a command line utility to standardize common functions here at DCgov. It can be extended by putting any command with the format `dcgov-yourcommand` on your `PATH`.

It is a (very slight) modification of [18F's CLI tool](https://github.com/18F/18f-cli).

## Installation

```bash
git clone https://github.com/dcgov/dcgov-cli.git
cd dcgov-cli
git checkout release
bash install
```

You can remove the scripts by running `bash clean` from the dcgov-cli folder.

## Requirements

### Mac

- Python (version 2.7 or 3.3+). You should use [pyenv](https://github.com/yyuu/pyenv) to manage your Python versions. Otherwise you're going to have to append sudo to the `bash` calls to avoid complaints that you're messing with system Python.
- pip (download [this file](https://bootstrap.pypa.io/get-pip.py) and run it with `python get-pip.py`)
- The Poirot and CivicJSON Python packages (install with `pip install poirot civicjson`)

### Windows

- The [Git Bash command line](https://git-for-windows.github.io/)
- [Python](https://www.python.org/downloads/) (version 2.7 or 3.3+), with pip
- The Poirot and CivicJSON Python packages (install with `pip install poirot civicjson`)

## Usage

```
dcgov [options] <subcommand> [subcommand options] <args>
```

### `dcgov init`

- Turns the current directory into a `git` repo with proper `LICENSE.md`, `CONTRIBUTING.md`, `README.md`, and `civic.json` files.
- Installs [Poirot](https://github.com/dcgov/poirot) as a pre-commit hook with a [default set](https://github.com/DCgov/poirot-patterns/blob/master/default.txt) of patterns to check for. 
- Creates a `develop` branch
- Optionally creates a language-specific .gitignore using gitignore.io

### `dcgov validate`

- Checks that your `LICENSE.md`, `CONTRIBUTING.md`, `README.md`, and `civic.json` files are valid

### `dcgov setup`

Runs the setup script found in https://github.com/18f/laptop. Used to set up a new computer or update an existing one. See that repo for more information about customizing the script through `~/.laptop.local`.

## Public Domain

This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/). For more information, see [LICENSE.md](LICENSE.md).

All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are affirming that the changes are yours to license and you are agreeing to comply with this waiver of copyright interest,  or that the changes are already in the public domain.
