############################################################
############################################################
###          __                                     __   ###
###   ____  / /_     ____ ___  __  __   ____  _____/ /_  ###
###  / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ ###
### / /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / ###
### \____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  ###
###                         /____/                       ###
###                                                      ###
###  Configuration by FrozenArcher ;-)                   ###
###                                                      ###
############################################################
############################################################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# User configuration

###########################
#  Environment variables  #
###########################

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/go/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Shell proxy
export http_proxy='http://127.0.0.1:7890'
export https_proxy='http://127.0.0.1:7890'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


#############
#  aliases  #
#############

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#  start desktop  #
alias x="startx ~/.xinitrc"
alias xb="startx ~/.xinitrc bspwm"
alias xi="startx ~/.xinitrc i3"
alias s="sudo systemctl start sddm"

#  git / config cammands  #
alias config='/usr/bin/git --git-dir=/home/fracher/.cfg/ --work-tree=/home/fracher'
alias g=git
alias ga="git add "
alias gaa="git add ."
alias gc="git commit -m "
alias gp="git push -u origin"
alias gpm="git push -u origin main"
alias c=config
alias cpm="config push -u orogin main"

#  actions  #
# mount windows fs
alias mw="$HOME/winfs/mount.sh"
# refresh mirrorlist, not for convienience
alias mirror-refresh="sudo systemctl start reflector && cat /etc/pacman.d/mirrorlist"

#  run apps  #
# pacman
alias pm="sudo pacman "
# ranger
alias ra=ranger
# thefuck
eval $(thefuck --alias)
# neofetch
alias nf=neofetch
# cowsay
alias cs=cowsay

#  editing  #
# nvim
alias nv=nvim
alias n="nvim ."
# for convienience
alias sczsh="source $HOME/.zshrc"
alias nz="nvim ~/.zshrc"
alias nx="nvim ~/.xinitrc"

#  coding  #
alias ca=cargo

#  system  #
# terminal proxy settings
alias xon="export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890"
alias xof="unset http_proxy;unset https_proxy"

#  debug  #
# launch polybar
alias po="$HOME/.config/polybar/launch.sh"
