export TERM=xterm-256color

ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH=/home/charlesfrye/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gallois"

## TAB-COMPLETION SETTINGS

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.

HYPHEN_INSENSITIVE="true"

## AUTO-UPDATE SETTINGS

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

## ASSORTED SETTINGS

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

## PLUGINS

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


## USER CONFIGURATION

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# powerlevel9k settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)


# ALIASES AND GLOBALS

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# use vim as editor
export EDITOR=vim

# ssh into redwood1 with port-forwarding
alias portforward="ssh -L 8890:localhost:8888"
export RW1="charlesfrye@redwood1.dyn.berkeley.edu"

# remove username from prompt
export DEFAULT_USER=`whoami`

# make windows files easily accessible
export C_="/mnt/c/Users/charlesfrye"

# simple dotfile config management via git alias
alias config='/usr/bin/git --git-dir=/home/charlesfrye/.cfg/ --work-tree=/home/charlesfrye'

export CHAPTER1="/home/charlesfrye/research/thesis/chapters/chapter1/chapter1.pdf"
export CHAPTER2="/home/charlesfrye/research/thesis/chapters/chapter2/chapter2.pdf"
export CHAPTER3="/home/charlesfrye/research/thesis/chapters/chapter3/chapter3.pdf"

# if we are not in a tmux, do path management
if [[ -z $TMUX ]]; then
  export PATH=$HOME/scripts/:$PATH
  export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH
fi

unsetopt BEEP
