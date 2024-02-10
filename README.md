# My Dotfiles

## Requirements

- GIT (But you obviously have that already 😆)
- [GNU/STOW](https://www.gnu.org/software/stow)

## Installation instructions

### Clone

Clone the repo into any directory you like. I prefer the `~/dotfiles` directory as it's easier to entry and easy to remember.

```sh
git clone https://github.com/MichalBastrzyk/dotfiles.git ~/dotfiles
```

### Get the submodules

```sh
git submodule update --init --recursive
```

And also make sure that you're on correct branch in the `.config/nvim` submodule which is as of writing this (2024-02-10)

```sh
cd .config/nvim

git checkout new

git pull

cd ../..
```

### Link dotfiles using `GNU/STOW`

Stow describes itself as a “symlink farm manager”, but in practical terms it’s just a program that can mirror the structure of one directory into another by creating symbolic links back to the original files.

```sh
stow .
```

If the tool throws and error you can backup the files it lists by changing their names or completely removing them if you don't care about losing your current dotfiles.
