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
    
1. Create a symbolic link to the `.zshrc`

    ```
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ```
    
1. Reload your shell
