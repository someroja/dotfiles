# dotfiles
My dotfiles and settings

## Initial setup (if you want to do something similar from scratch)
```sh
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles remote add origin git@github.com:someroja/dotfiles.git
```

# Setting up a new machine

## Clone dotfiles
```sh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:someroja/dotfiles.git dotfiles-tmp
rsync -rv --exclude='.git' dotfiles-tmp/ $HOME/
rm -r $HOME/dotfiles-tmp
```

## Configuration
```sh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source .zshrc # or start a new session to get everything loaded
dotfiles config status.showUntrackedFiles no
```
