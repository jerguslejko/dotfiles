# My .dotfiles

## Pre-setup

1. Install Homebrew

    ```shell
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

1. Install additional tools

    ```shell
    brew install zsh vim git fzf trash composer node yarn hub tree bat mysql@5.7
    ```

1. Install global composer packages

    ```shell
    composer global require laravel/valet laravel/installer laravel/envoy psy/psysh
    ```

## Installation

1. Install oh-my-zsh

    ```shell
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```

1. Clone the repository into `~/.dotfiles`

    ```shell
    git clone https://github.com/jerguslejko/dotfiles.git ~/.dotfiles
    ```

1. Create symbolic links

    ```shell
    ln -sf ~/.dotfiles/editrc ~/.editrc
    ln -sf ~/.dotfiles/inputrc ~/.inputrc
    ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
    ln -sf ~/.dotfiles/zsh/zshenv ~/.zshenv
    ln -sf ~/.dotfiles/git/config ~/.gitconfig
    ln -sf ~/.dotfiles/git/ignore ~/.gitignore
    ln -sf ~/.dotfiles/git/attributes ~/.gitattributes
    mkdir -p ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch && ln -sf ~/.dotfiles/iterm/darkmode.py ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch
    ```

1. Install vim plugins

    ```shell
    mkdir -p ~/.vim/{bundle,backup,swap}
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    ```

1. Hush login

    ```shell
    touch ~/.hushlogin
    ```

1. Install fonts

    ```shell
    cp ~/.dotfiles/fonts/* ~/Library/Fonts
    ```

1. Reload your shell

## Miscellaneous

* MySQL

    ```sql
    CREATE USER 'jergus'@'localhost'; -- IDENTIFIED WITH mysql_native_password
    GRANT ALL PRIVILEGES ON * . * TO 'jergus'@'localhost';
    ```


CREATE USER 'ohdear_ci'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ohdear_secret';
GRANT ALL PRIVILEGES ON ohdear_ci.* TO 'ohdear_ci'@'localhost';
