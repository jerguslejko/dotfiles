# path to oh-my-zsh
export ZSH=~/.oh-my-zsh

# highlighting
source ~/.dotfiles/highlighting.zsh

# plugins
plugins=(symfony-console zsh-syntax-highlighting docker alias-tips)

# bootstrap oh-my-zsh
source $ZSH/oh-my-zsh.sh

# custom theme
PROMPT='%{$fg[yellow]%} %{$fg[green]%}%c %{$fg[yellow]%}→ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}) %{$reset_color%}"
