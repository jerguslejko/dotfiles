# path to oh-my-zsh
export ZSH=~/.oh-my-zsh

# theme
ZSH_THEME="cloud"

# plugins
plugins=(symfony-console vagrant)

# space separated list of symfony tools
SYMFONY_CONSOLE_TOOLS="composer valet artisan"

# bootstrap oh-my-zsh
source $ZSH/oh-my-zsh.sh

# path
export PATH="$PATH:/usr/local/sbin"

# preferred editor
export EDITOR='vim'

# source aliases
for file in ~/.zsh/aliases/*; do
    source "$file"
done
