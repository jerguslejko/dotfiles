# Tools
alias rm="$(brew --prefix)/bin/trash" # brew install trash
alias cat="$(brew --prefix)/bin/bat --paging never --plain" # brew install bat
alias mysql="$(brew --prefix)/bin/mycli --host=localhost" # brew install mycli

# Helpers
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Your public SSH key was successfully copied to the clipboard.'"

# Hidden files
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# macOS is great!
alias kill_touchbar="pkill 'Touch Bar agent'; killall 'ControlStrip'"

alias dark="osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
alias light="osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
