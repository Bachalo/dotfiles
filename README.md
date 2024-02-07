# My Dotfiles

## Requirements

- [GNU/STOW](https://www.gnu.org/software/stow)

## Installation instructions

### Clone the repo

Clone the repo into any directory you like.

### Link dotfiles using `GNU/STOW`

Stow describes itself as a “symlink farm manager”, but in practical terms it’s just a program that can mirror the structure of one directory into another by creating symbolic links back to the original files.

```sh
stow .
```

