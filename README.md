# My .dotfiles

## Pre-setup - macOS only
   
1. Install Homebrew

    ```shell
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
    
1. Install additional tools

    ```shell
    brew install zsh vim git trash composer node yarn mysql
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
    ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
    ln -sf ~/.dotfiles/zsh/zshenv ~/.zshenv
    ln -sf ~/.dotfiles/git/config ~/.gitconfig
    ln -sf ~/.dotfiles/git/ignore ~/.gitignore
    ln -sf ~/.dotfiles/git/attributes ~/.gitattributes
    ```

1. Install oh-my-zsh plugins

    ```shell
    git clone https://github.com/jerguslejko/zsh-symfony-completion.git ~/.oh-my-zsh/custom/plugins/symfony-console
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
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
    
1. Reload your shell
