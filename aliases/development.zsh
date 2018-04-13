# Laravel
alias art="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tink="[[ -f ./artisan ]] && php artisan tinker --verbose || psysh"

alias dusk="php artisan dusk"
alias phpunit="./vendor/bin/phpunit"
alias coverage="php -dzend_extension='/usr/local/opt/php72-xdebug/xdebug.so' vendor/bin/phpunit --coverage-html"
alias pf="./vendor/bin/phpunit --filter"
alias p="phpunit --stop-on-fail"

# Others
alias d=docker
alias vs="/usr/local/bin/code"
