# Laravel
alias art="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tink="[[ -f ./artisan ]] && php artisan tinker --verbose || psysh"

alias phpunit="./vendor/bin/phpunit"
alias coverage="php -dzend_extension='/usr/local/Cellar/php/7.2.5/pecl/20170718/xdebug.so' vendor/bin/phpunit --coverage-html"
alias pf="./vendor/bin/phpunit --filter"
alias p="phpunit --stop-on-fail"

# Others
alias d=docker
alias y=yarn
alias vs="/usr/local/bin/code"
