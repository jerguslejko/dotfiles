# Laravel
alias art="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tink="[[ -f ./artisan ]] && php artisan tinker --verbose || psysh"

alias phpunit="./vendor/bin/phpunit"
alias pf="phpunit --stop-on-fail --filter"
alias p="phpunit --stop-on-fail"
alias com="composer"

# Others
alias y=yarn

t() {
    tree -I '.git|.DS_Store|node_modules|vendor' --dirsfirst -L "${2-100}" -aC "${1-.}"
}
