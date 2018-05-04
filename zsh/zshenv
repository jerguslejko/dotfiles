# path
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# preferred editor
export EDITOR="vim"

# source aliases
for file in ~/.dotfiles/aliases/*; do
    # only load macos.zsh on macOS
    if [[ "$file" == *macos.zsh && $(uname) != "Darwin" ]]; then
        continue
    fi

    source "$file"
done
