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
```
```sh
rsync -rv --exclude='.git' dotfiles-tmp/ $HOME/
```
```sh
rm -r $HOME/dotfiles-tmp
```

## Configuration
zsh needs zplug
```sh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```
```sh
source .zshrc # or start a new session to get everything loaded
```

Don't show _all the things_ when checking dotfiles status
```sh
dotfiles config status.showUntrackedFiles no
```
