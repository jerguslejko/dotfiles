# Movement
alias dot="cd ~/.dotfiles"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"

# Tools
alias b="brew"
alias rm="/usr/local/bin/trash" # brew install trash
alias cat="bat --paging never --plain" # brew install bat

# Helpers
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Your public SSH key was successfully copied to the clipboard.'"
alias show_hidden="defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder"
alias hide_hidden="defaults write com.apple.finder AppleShowAllFiles -bool NO  && killall Finder"
alias kill_touchbar="pkill 'Touch Bar agent'; killall 'ControlStrip'"

# Expose ~/Code folder
cdpath=($cdpath ~/Code)
