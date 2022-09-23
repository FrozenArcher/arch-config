# Archlinux Configuration

**The complete multi-desktop (Xorg) environment handled by xinit, plus some extra config.**

Also: my [dwm repo](https://github.com/FrozenArcher/dwm.git), my [neovim configuration](https://github.com/FrozenArcher/nvim-config.git)

## Desktops

There're config files for the following desktops, which you can start via xinit shortcuts:

* dwm (simply `x` or `x d|dwm`)
* i3 + i3status-rust (`xi` or `x i|i3`)
* bspwm + polybar (`xb` or `x b|bsp|bspwm`)
* kde-plasma (`x k|kde`, or use `s` to start sddm)

besides, swaywm + waybar config is available. (use `s` to start sddm first.)

## Installation

using git bare repository:

```
# set up the alias and clone repository
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/FrozenArcher/dotfiles.git $HOME/.cfg
config config --local status.showUntrackedFiles no

config checkout

# The step above might fail with a message like:
# error: The following untracked working tree files would be overwritten by checkout:
#     .bashrc
#     .gitignore
# Please move or remove them before you can switch branches.
# Aborting

# please backup the conflict files, delete them and re-run the command:
config checkout
```

If you use zsh, the config alias is already in the `.zshrc ` file.
Otherwise you should place it in your shell's profile.

### The Installation of oh-my-zsh

```
# please install wget first.
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
