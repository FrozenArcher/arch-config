# Archlinux Configuration

**The complete multi-desktop environment handled by sddm(xorg & wayland) and xinit(xorg only)**

Some related config files and scripts are also available.

*Also: my [dwm repo](https://github.com/FrozenArcher/dwm.git), my [neovim configuration](https://github.com/FrozenArcher/nvim-config.git)*

## Desktops

There're config files for the following desktops, which you can start via **sddm entries** or via `xinit` shortcuts (only available with `.zshrc` in my dotfile repo):

* dwm (simply `x` or `x d|dwm`)
* i3 + polybar (or i3status-rust) (`xi` or `x i|i3`)
* bspwm + polybar (`xb` or `x b|bsp|bspwm`)
* kde-plasma (`x k|kde`)
* swaywm + waybar (sddm only)

Use `s` to start sddm, or enable/start `sddm.service` with `systemctl`.

## Installation

using git bare repository:

```
# set up the alias and clone repository
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/FrozenArcher/arch-config.git $HOME/.cfg
config config --local status.showUntrackedFiles no

config checkout
```

The step above might fail with a message like:
```
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

please backup the conflict files, delete them and re-run the command:
```
config checkout
```

If you use zsh, the config alias is already in the `.zshrc` file.
Otherwise you should place it in your shell's profile.

*refer to [this article](https://www.atlassian.com/git/tutorials/dotfiles)*

### The Installation of oh-my-zsh + autosuggestions + syntax-highlighting

```
# please install wget first.
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

***

## Tools for Development

(except `base-devel`)

### C

```
# binaries
valgrind
doxygen

# libraries
gsl

```

## TODO

* clear the scripts
