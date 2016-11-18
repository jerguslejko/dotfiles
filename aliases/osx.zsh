# General
alias c="clear"
alias l="ls -lAh"

# Movement
alias desk="cd ~/Desktop"
alias code="cd ~/code"

# Tools
alias rm="/usr/local/lib/node_modules/osx-trash/trash"

# Helpers
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Your public SSH key was successfully copied to the clipboard.'"

# Other
t() {
    tree -I '.git|.svn|.DS_Store|node_modules|bower_components|vendor' --dirsfirst -L ${2-3} -aC $1
}
