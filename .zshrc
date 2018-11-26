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
  react-native
  osx
)

# GENERAL STUFF
alias lastpw="lpass show -c -G --password"
alias listAlias="cat ~/.zshrc"
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

# GIT DOTFILES
alias ca="config add"
alias cst="config status"
alias ccam="config commit -am"
alias cpu="config push"

# YARN
alias ya="yarn add"
alias yag="yarn global add"
alias yi="yarn install"
alias ys="yarn start"
alias ysw="yarn start:watch"
alias yt="yarn test"

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

function zle-keymap-select zle-line-init
{
    # change cursor shape in iTerm2
    case $KEYMAP in
        vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
        viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
    esac

    zle reset-prompt
    zle -R
}

function zle-line-finish
{
    print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_DEFAULT_OPTS="--preview 'ccat --color=always {}'"
prompt_context() {}

alias config='/usr/bin/git --git-dir=/Users/Jostein/.cfg/ --work-tree=/Users/Jostein'

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/Jostein/Documents/Prog/rgb-mousepad/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/Jostein/Documents/Prog/rgb-mousepad/node_modules/tabtab/.completions/electron-forge.zsh
