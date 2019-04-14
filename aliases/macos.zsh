# Tools
alias git="hub" # brew install hub
alias rm="$(brew --prefix)/bin/trash" # brew install trash
alias mysql="$(brew --prefix)/bin/mycli --host=localhost" # brew install mycli

# Hidden files
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# macOS is great!
alias kill_touchbar="pkill 'Touch Bar agent'; killall 'ControlStrip'"

# brew install bat
bat() {
    $(brew --prefix)/bin/bat \
        --paging never \
        --plain \
        --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub) \
        $1
}
alias cat="bat"
