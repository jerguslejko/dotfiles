# General
alias g="git"

alias gs="git status"
alias gc="git commit -m"
alias ga="git add"
alias gaa="git add --all ."
alias gwip="git add --all . && git commit -m 'wip'"

alias gam="git commit --amend --no-edit"
alias gamm="git commit --amend"

alias gnah="git reset --quiet HEAD . && git checkout -- . && git clean -fdq"

# Logs and diffs
alias gl="git log --oneline"
alias gd="git diff HEAD -- . ':!composer.lock' ':!yarn.lock'"

# Branches
alias gb="git branch"
alias gr="git rebase"
alias gco="git checkout"
alias gcom="git checkout master"
