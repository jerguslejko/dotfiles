# General
alias g="git"

alias gs="git status"
alias gc="git commit -m"
alias ga="git add"
alias gaa="git add --all ."
alias gwip="git add . && git commit -m 'wip'"
alias glast="git reset HEAD~"
alias gec="git commit --allow-empty -m 'Initial commit'"

alias gam="git commit --amend --no-edit"
alias gamm="git commit --amend"

alias gnah="git checkout -- . && git clean -fdq"

# Logs and diffs
alias gl="git log --oneline"
alias gd="git diff -- . ':!composer.lock' ':!yarn.lock'"
alias gds="git diff --staged -- . ':!composer.lock' ':!yarn.lock'"

# Branches
alias gb="git branch"
alias gr="git rebase"
alias gco="git checkout"
alias gcom="git checkout master"
