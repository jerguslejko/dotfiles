# Tools
alias rm="$(brew --prefix)/bin/trash" # brew install trash
alias cat="$(brew --prefix)/bin/bat --paging never --plain" # brew install bat
alias mysql="$(brew --prefix)/bin/mycli --host=localhost" # brew install mycli

# Hidden files
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# macOS is great!
alias kill_touchbar="pkill 'Touch Bar agent'; killall 'ControlStrip'"

# light/dark mode
alias dark="osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
alias light="osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
