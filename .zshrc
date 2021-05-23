# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# source ~/.bash_profile
# Path to your oh-my-zsh installation.
export MYPATH="/Users/lina"
export ZSH="/Users/lina/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="random"

# If you want to skip the verification of [oh-my-zsh] insecure directories 
# you can set the variable ZSH_DISABLE_COMPFIX to [oh-my-zsh] 
# "true" before oh-my-zsh is sourced in your zshrc file.
ZSH_DISABLE_COMPFIX=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bundler
  autojump
  zsh-autosuggestions
  history-substring-search
  zsh-syntax-highlighting
  tmux
  tmuxinator
  dotenv
  osx
  rake
  rbenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='nvim'
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
fg(){ if [[ "$*" =~ ^[0-9]+$ ]]; then builtin fg %"$*";else builtin fg "$@";fi }

alias CLICOLOR=1
alias LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
# source $MYPATH/ENV_3.7.6/bin/activate
export PATH=$PATH:$HOME/bin:$MYPATH/go/bin:/usr/local/go/bin:/usr/local/bin:/usr/libexec/git-core:/usr/bin:/usr/sbin

export GOPATH=$MYPATH/go
export GO111MODULE=on
export GOPROXY=https://goproxy.cn
# alias  PATH=$PATH:$(go env GOPATH)/bin
# alias  GOCACHE=off

[[ -s $MYPATH/.autojump/etc/profile.d/autojump.sh ]] && source $MYPATH/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# alias tmux='tmux -2'
alias vi="nvim"
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export KUBECONFIG=$MYPATH/.kube/admin.conf
