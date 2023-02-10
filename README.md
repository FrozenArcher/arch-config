# Archlinux Configuration

*Also: my [dwm repo](https://github.com/FrozenArcher/dwm.git), my [neovim configuration](https://github.com/FrozenArcher/nvim-config.git)*

## Contents

### Desktop Environments

Recommended to use `sddm`. The `.xinitrc` is also available but not tested.

* awesome + picom
* bspwm + sxhkd + polybar + rofi + picom
* [dwm + rofi + picom](https://github.com/FrozenArcher/dwm.git)
* i3 + polybar/i3status-rust + rofi + picom
* swaywm + waybar + wofi (long ago...)

### Useful Programs

* very minimal `.vimrc`
* very minimal `.bashrc`
* complete `.zshrc`
* kitty
* neofetch
* `.fehbg` for wallpapers

## Installation

### [OPTIONAL] Setup proxy Environment variables

```bash
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
```

### First install oh-my-zsh + autosuggestions + syntax-highlighting

``` bash
# Install wget & zsh first.
yay -S zsh wget
# Install omz.
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install plugins.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Next install dotfiles

using git bare repository:

``` bash
# set up the alias and clone repository
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:FrozenArcher/arch-config.git $HOME/.cfg
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

### Wallpaper Setting

Use a symbolic link to set up your wallpaper (in window managers).

```bash
ln -sf /path/to/wallpaper ~/.wallpaper
```

***

*refer to [this article](https://www.atlassian.com/git/tutorials/dotfiles)*
