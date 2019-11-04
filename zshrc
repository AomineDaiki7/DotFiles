# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey -v
export TERM='xterm-256color'
#"screen-256color"
#'rxvt-unicode'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=111"
# Path to your oh-my-zsh installation.
  export ZSH=/home/ebhesha/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"
#ZSH_THEME="afowler"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
#cd /repo/ebhesha/epg/bcat/src
alias tmux="$HOME/local/bin/tmux"
#export PATH=$PATH:$HOME/local/bin/
# key bindings
#bindkey  "^[[H"   beginning-of-line
#bindkey  "^[[F"   end-of-line
export GIT_EDITOR=vim
#export PATH=$PATH:~/go/bin
#export GOPATH=$HOME/go
#export GOBIN=$HOME/go/bin
echo -ne "\033]12;Red1\007" 

alias rebase="git pull --rebase"

alias ws='/repo/ebhesha/workspace/bcat/src'

function get_stack(){
     python /repo/ebhesha/workspace/bcat/src/get_stack.py $1
}

function fs(){
     find $2 -name $1
}

function rmcsar(){
     rm -rf Images
     rm -rf Definitions
     rm -rf HOT
     rm -rf Scripts
     rm -rf TOSCA-Metadata
     rm epg.mf
     rm ChangeLog.txt
     rm epg.csar
}

function pep8check(){
    python /repo/ebhesha/workspace/bcat/src/pep8check.py
}

function nvim(){
     /home/ebhesha/repos/neovim/build/bin/nvim $1
}
