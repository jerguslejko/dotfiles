# path to oh-my-zsh
export ZSH=~/.oh-my-zsh

# highlighting
source ~/.zsh/highlighting.zsh

# plugins
plugins=(symfony-console zsh-syntax-highlighting yarn docker)

# space separated list of symfony tools
SYMFONY_CONSOLE_TOOLS="composer valet artisan envoy"

# bootstrap oh-my-zsh
source $ZSH/oh-my-zsh.sh

# path
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# preferred editor
export EDITOR='vim'

# source aliases
for file in ~/.zsh/aliases/*; do
    # only load macos.zsh on macOS
    if [[ "$file" == *macos.zsh && $(uname) != "Darwin" ]]; then
        continue
    fi

    source "$file"
done

# custom theme
PROMPT='%{$fg[yellow]%} %{$fg[green]%}%c %{$fg[yellow]%}→ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}) %{$reset_color%}"
