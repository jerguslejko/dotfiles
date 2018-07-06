# General
alias g="hub"

alias gs="git status"
alias ga="git add"
alias gaa="git add --all ."
alias gac="git commit -am"
alias gwip="git add --all . && git commit -m 'WIP'"

alias gr="git rebase"
alias gri="git rebase -i"
alias grm="git rebase master"

alias gamm="git commit --amend"
alias gam="git commit --amend --no-edit"

alias gnah="git reset --quiet HEAD . && git checkout -- . && git clean -fdq"

# Logs and diffs
alias gd="git diff"
alias gl="git log --oneline"

# Branches
alias gb="git branch"
alias gco="git checkout"
alias gcom="git checkout master"

# commit
gc() {
    if [ $# -eq 1 ]; then git commit -m "$1"; else git commit; fi
}
