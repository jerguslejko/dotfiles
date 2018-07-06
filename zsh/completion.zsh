compdef _git_rebase_completion "gr" "gri" # git rebase, git rebase -i

# completion functions
_git_rebase_completion() {
    suggestions=("${(@f)$(_get_commits)}")

    _describe -t commands "command" suggestions
}

# helpers
_get_commits() {
    git --no-pager log --format="%h:%s - <%an> %ad" | head -n "${1:-20}"
}
