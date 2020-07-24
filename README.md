# Rikkokiri's dotfiles

My quite basic dotfile setup that will hopefully evolve.

I keep my dotfiles under `~projects/` and that is what some of the scripts assume. I will update them later to use variables to make the set up more configurable.

## To do

- [ ] Adapt for zsh (currently specified for bash)

## Installation

> Note:
The bootstrap.exclude.sh script creates symlinks from the dotfiles in this directory to the HOME directory. Make sure that your dotfiles are backed up somewhere safe.

Open a terminal and follow along!
1. Clone this repository: `git clone https://github.com/rikkokiri/dotfiles`
2. CD into the folder: `cd dotfiles`
3. Execute the bootstrap script: `sh ./bootstrap.exclude.sh`
4. Restart your terminal or run `source .bash_profile`

## Precommit hook for saving VS Code extensions

Inspired by [@anhari](https://github.com/anhari/dotfiles), I've added a pre-commit hook that saves list of VS Code extensions to `vscode/vscode_extensions`. Set the .hooks directory from the repo to serve as git hooks directory by running

> `git config --local core.hooksPath .githooks/`

on your machine ( [source](https://stackoverflow.com/questions/3462955/putting-git-hooks-into-repository) ). Or you can copy the hook to hooks directory by running

> `cp ~/projects/dotfiles/.githooks/pre-commit ~/projects/dotfiles/.git/hooks/pre-commit`

Regardless of the method, remember to make it executable by running either

> `chmod +x ~/projects/dotfiles/.githooks/pre-commit`

or

> `chmod +x ~/projects/dotfiles/.git/hooks/pre-commit`

## Acknowledgements

- [@ajmalsiddiqui](https://raw.githubusercontent.com/ajmalsiddiqui/dotfiles) whose articles on dotfiles and dotfile repo served as starting point and inspiration for finally getting my dotfiles repo started
- [@mathiasbynens](https://github.com/mathiasbynens/dotfiles) - Dotfiles I can only dream of
