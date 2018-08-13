# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Jostein/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnosterzak"
ZSH_THEME="agnoster"
# ZSH_THEME="af-magic"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  z
  dotenv
  kubectl
  yarn
  bundler
  zsh-autosuggestions
  zsh-syntax-highlighting
  vi-mode
  thefuck
)

# GENERAL STUFF
alias lastpw="lpass show -c -G --password"
# alias listAlias="cat $OMF_CONFIG/init.fish"
export VISUAL=nvim
export EDITOR="$VISUAL"
export TERM=xterm-256color


# HOMEBREW
alias bi="brew install"
alias bs="brew search"
alias bubu="brew update; brew upgrade"

# GIT
alias ga="git add"
alias gal="git add ."
alias gb="git branch -av"
alias gca="git commit -am"
alias gcb="git checkout -b"
alias gch="git checkout"
alias gcm="git commit -m"
alias gf="git fetch"
alias gm="git merge"
alias gp="git push"
alias gpi="git pull; yarn install"
alias gpl="git pull"
alias gpu="git push -u origin"
alias gst="git status"

# YARN
alias ya="yarn add"
alias yag="yarn global add"
alias yi="yarn install"
alias ys="yarn start"
alias ysw="yarn start:watch"
alias yt="yarn test"

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

zle-keymap-select () {
    if [ "$TERM" = "xterm-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # the command mode for vi
            echo -ne "\e[2 q"
        else
            # the insert mode for vi
            echo -ne "\e[4 q"
        fi
    fi
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_DEFAULT_OPTS="--preview 'ccat --color=always {}'"
prompt_context() {}

alias config='/usr/bin/git --git-dir=/Users/Jostein/.cfg/ --work-tree=/Users/Jostein'
