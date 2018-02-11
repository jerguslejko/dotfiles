# General
alias c="clear"
alias l="ls -lAh"
alias -g @="| grep -i"
alias sudo="sudo "
alias _="sudo"

# Other
t() {
    tree -I '.git|.DS_Store|node_modules|vendor' --dirsfirst -L "${2-3}" -aC "${1-.}"
}

