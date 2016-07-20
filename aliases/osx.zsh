# General
alias c="clear"
alias l="ls -lAh"
alias s="pmset sleepnow"
alias n="pmset displaysleepnow"
alias rm="/usr/local/lib/node_modules/osx-trash/trash"

# Helpers
alias hosts="sudo vim /etc/hosts"
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Your public SSH key was successfully copied to the clipboard.'"

# Bluetooth & WiFi
alias bon="blueutil power 1"
alias boff="blueutil power 0"
alias won="networksetup -setairportpower en0 on"
alias woff="networksetup -setairportpower en0 off"

# Network
ip() {
    host=$(ifconfig en0 | grep "inet " | awk '{print $2}')
    broadcast=$(ifconfig en0 | grep "inet " | awk '{print $6}')
    gateway=$(netstat -rn | grep "default" | awk '{print $2}' | head -1)

    echo "Host address: $host"
    echo "Broadcast address: $broadcast"
    echo "Gateway address: $gateway"
}

