# Tools
alias git="$(brew --prefix)/bin/hub" # brew install hub
alias rm="$(brew --prefix)/bin/trash" # brew install trash

# Hidden files
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"

# macOS is great!
alias kill_touchbar="pkill 'Touch Bar agent' && killall 'ControlStrip'"

# brew install bat
cat() {
    $(brew --prefix)/bin/bat \
        --paging never \
        --plain \
        --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub) \
        $1
}
