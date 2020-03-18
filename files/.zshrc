# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.bin:$HOME/.config/composer/vendor/bin:$PATH
export TERM="tmux-256color"
[[ -z "$TMUX" ]] && export TERM="xterm-256color"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME"
#export TERM="screen-256color"
#export TERM="xterm-256color"

#export LEGENDARY="$HOME/Projects/script/legendary-lamp"
export PBIN="$HOME/.bin"
export LEGENDARY="/home/maneal/work/perso/script/legendary-lamp"
export CONFIG="$HOME/.config"
export AWESOME_THEMES="$HOME/.config/awesome_backups"
export VIM_SESSION="$HOME/.config/nvim/sessions"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="agnoster"
ZSH_THEME="fino"
#ZSH_THEME="bira"


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
 export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
 #DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

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

alias l="ls -1X"
alias ls="ls --color=auto -pX"
alias la="ls --color=auto -ApX"
alias ll="ls --color=auto -lX"
alias lla="ls --color=auto -laX"
alias ..="cd .."
alias rterm="source ~/.zshrc"
alias cmakeg="cmake -G \"Unix Makefiles\""
alias vim="nvim"
alias vi="nvim"
alias propre="clear"

#[[ $- != *i* ]] && return
#[[ "$DISPLAY" ]] && [[ -z "$TMUX" ]] && exec tmux
#[[ "$DISPLAY" ]] && [[ -z "$TMUX" ]] && [[ "$TMUX_ATTACH" ]] && exec tmux a
#[[ -n "$TMUX" ]] && screenfetch

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
### C Graphical Programming Environement Variable
export LIBRARY_PATH=$LIBRARY_PATH:/home/maneal/.graph_programming/lib
export LD_LIBRARY_PATH=$LIBRARY_PATH:/home/maneal/.graph_programming/lib
export CPATH=$CPATH:/home/maneal/.graph_programming/include
