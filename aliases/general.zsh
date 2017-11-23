# General
alias c="clear"
alias l="ls -lAh"
alias -g @="| grep -i"
alias sudo="sudo " # this enables running aliases with sudo
alias _="sudo"
alias __='sudo $(fc -ln -1)'

# Other
t() {
    tree -I '.git|.svn|.DS_Store|node_modules|vendor' --dirsfirst -L "${2-3}" -aC "${1-.}"
}
