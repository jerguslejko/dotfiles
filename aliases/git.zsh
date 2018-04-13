# General
alias g="hub"

alias gs="git status"
alias gc="git commit -m"
alias ga="git add"
alias gaa="git add --all ."
alias gwip="git add --all . && git commit -m 'WIP'"
alias gac="git commit -am"

alias gr="git rebase"
alias grm="git rebase master"

alias gam="git commit --amend --no-edit"
alias gamm="git commit --amend"

alias gnah="git reset --quiet HEAD . && git checkout -- . && git clean -fdq"

# Logs and diffs
alias gl="git log --oneline"
alias gd="git diff"

# Branches
alias gb="git branch"
alias gco="git checkout"
alias gcom="git checkout master"
