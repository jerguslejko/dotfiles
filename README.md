# (Oh My) ZSH setup

## Instalation

1. Clone the repository into `~/.zsh` directory

    ```
git clone https://github.com/jerguslejko/zsh-setup.git ~/.zsh
```

2. Install _ZSH Symfony Console Completion_ plugin (https://github.com/jerguslejko/zsh-symfony-completion)

    ```
git clone https://github.com/jerguslejko/zsh-symfony-completion.git ~/.oh-my-zsh/custom/plugins/symfony-console
```

3. Install _zsh-syntax-highlighting_ (https://github.com/zsh-users/zsh-syntax-highlighting)

    ```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

4. Create a symbolic link to the `.zshrc`

    ```
ln -s ~/.zsh/.zshrc ~/.zshrc
```

5. Reload your shell
