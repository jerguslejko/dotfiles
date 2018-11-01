# Movement
alias dot="cd ~/.dotfiles"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"

# Tools
alias b="brew"
alias rm="$(brew --prefix)/bin/trash" # brew install trash
alias cat="$(brew --prefix)/bin/bat --paging never --plain" # brew install bat

# Helpers
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Your public SSH key was successfully copied to the clipboard.'"
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"
alias kill_touchbar="pkill 'Touch Bar agent'; killall 'ControlStrip'"

alias dark="osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
alias light="osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"

# Expose ~/Code folder
cdpath=($cdpath ~/Code)

:e() {
    /usr/local/bin/code ${1-.}
}
