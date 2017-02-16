# General
alias c="clear"
alias l="ls -lAh"
alias -g @="| grep"

# Other
t() {
    tree -I '.git|.svn|.DS_Store|node_modules|bower_components|vendor' --dirsfirst -L ${2-3} -aC $1
}
