# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#APP
alias chr="open -a 'Google Chrome'"
alias sfr="open -a 'Safari'"
alias fnd="open -a 'Finder'"
alias quitall="open -a 'quit all'"

# NAVIGATION

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# COMMON DIRECTORIES

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias react='cd ~/Documents/GoIT/React'
alias home="cd ~"

# NPM

alias str="npm start"
alias dev="npm run dev"

alias vite="npm create vite@latest"
alias yup="npm install yup"
alias formik="npm install formik"
alias clsx="npm install clsx"
alias ptp="npm install --save-dev prop-types"
alias icons="npm install react-icons"
alias loader="npm install react-loader-spinner --save"

alias rdxtlk="npm install @reduxjs/toolkit react-redux"
alias rdxprs="npm install redux-persist"
alias toast="npm install react-hot-toast"

alias required="npm install modern-normalize ; npm i the-new-css-reset ; npm install react-router-dom ; npm install axios"

# Node.js 

alias ndm="npm i nodemon -D ; nano package.json"

#General

alias pck="nano package.json"


# GIT

alias gs='git status'
alias gbl='git branch'
alias gch='git checkout'
alias gchm='git checkout main'
alias gcb='git checkout -b'
alias gmm='git checkout main ; git pull ; git checkout - ; git merge main'
alias gcm='git add . && git commit -m'
alias gp='git push -u origin main'
alias gpuo='git push --set-upstream origin main'
alias gbd='git branch -d'
alias grv="git remote -v"
alias grr="git remote remove origin"

#FN

cdwfi() {
    mkdir "$1" && cd "$1" && touch "$2"
}

vitercts() {
  npm init vite@latest "$1" -- --template=react-ts &&
  cd "$1" && npm install && 
  npm install --save-dev typescript @types/react @types/react-dom
}

gcmgp() {
    if [ $# -ne 2 ]; then
        echo "Потрібно вказати два аргументи: назву гілки та повідомлення коміту"
        return 1
    fi

    git checkout -b "$1" && git add . && git commit -m "$2" && git push -u origin "$1"
}

#TS
alias watch="tsc --noEmit --watch"

#ADMIN
alias shi="sudo shutdown -h now"
alias sli="sudo shutdown -s now"

# VSCode

alias vs="code ."

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
