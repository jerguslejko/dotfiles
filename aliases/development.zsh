# Laravel
alias art="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tink="[[ -f ./artisan ]] && php artisan tinker --verbose || psysh"

alias phpunit="./vendor/bin/phpunit"
alias pf="phpunit --stop-on-fail --filter"
alias p="phpunit --stop-on-fail"
alias coverage="php -dzend_extension='/usr/local/opt/php/pecl/20170718/xdebug.so' vendor/bin/phpunit --coverage-html"
alias com="composer"

# Others
alias d=docker
alias y=yarn
alias vs="/usr/local/bin/code"

laravel_logs() {
    tail -f -n 450 storage/logs/laravel*.log \
        | grep -i -E "^\[\d{4}\-\d{2}\-\d{2} \d{2}:\d{2}:\d{2}\]|Next [\w\W]+?\:" --color
}
