# General
alias c="clear"
alias l="ls -lAh"

# Movement
alias desk="cd ~/Desktop"
alias code="cd ~/code"

# Enhanced tools
alias rm="/usr/local/lib/node_modules/osx-trash/trash"

# Helpers
alias hosts="sudo vim /etc/hosts"
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Your public SSH key was successfully copied to the clipboard.'"

# Network
ip() {
    host=$(ifconfig en0 | grep "inet " | awk '{print $2}')
    broadcast=$(ifconfig en0 | grep "inet " | awk '{print $6}')
    gateway=$(netstat -rn | grep "default" | awk '{print $2}' | head -1)

    echo "Host address: $host"
    echo "Broadcast address: $broadcast"
    echo "Gateway address: $gateway"
}

# Other
t() {
    tree -I '.git|.svn|node_modules|bower_components|vendor|.DS_Store' --dirsfirst -L ${2-3} -aC $1
}
