# dotfiles
My dotfiles for different stuff

## Easy setup
```bash
$ pacman -S zsh || brew install zsh zsh-completions
$ echo "alias config"='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
$ git clone --bare git@github.com:JosteinKringlen/dotfiles.git $HOME/.cfg
$ yaourt -S zsh-syntax-highlighting || brew install zsh-syntax-highlighting
$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
