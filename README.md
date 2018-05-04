# (Oh My) ZSH setup

## Instalation

1. Clone the repository into `~/.dotfiles` directory

    ```
    git clone https://github.com/jerguslejko/dotfiles.git ~/.dotfiles
    ```

1. Install _ZSH Symfony Console Completion_ plugin (https://github.com/jerguslejko/zsh-symfony-completion)

    ```
    git clone https://github.com/jerguslejko/zsh-symfony-completion.git ~/.oh-my-zsh/custom/plugins/symfony-console
    ```

1. Install _zsh-syntax-highlighting_ (https://github.com/zsh-users/zsh-syntax-highlighting)

    ```
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    ```

1. Create a symbolic links

    ```
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.zshenv ~/.zshenv
    ln -s ~/.dotfiles/git/config ~/.gitconfig
    ln -s ~/.dotfiles/git/ignore ~/.gitignore
    ln -s ~/.dotfiles/git/attributes ~/.gitattributes
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    ```

1. Vim-specific setup

    ```
    mkdir ~/.vim/{bundle,backup,swap}
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    ```

1. Reload your shell
