# path to oh-my-zsh
export ZSH=~/.oh-my-zsh

# theme
ZSH_THEME="cloud"

# highlighting
source ~/.zsh/highlighting.zsh

# plugins
plugins=(symfony-console vagrant zsh-syntax-highlighting)

# space separated list of symfony tools
SYMFONY_CONSOLE_TOOLS="composer valet artisan"

# bootstrap oh-my-zsh
source $ZSH/oh-my-zsh.sh

# path
export PATH="/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH"

# preferred editor
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='subl'
fi

# source aliases
for file in ~/.zsh/aliases/*; do
    source "$file"
done
