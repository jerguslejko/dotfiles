# Laravel
alias art="php artisan --verbose"
alias tink="[[ -f ./artisan ]] && php artisan tinker --verbose || psysh"
alias fresh="php artisan migrate:refresh --seed --verbose"
alias log:clear="rm storage/logs/*"
alias log:view="cat storage/logs/laravel.log"

# Tools
alias phpunit="./vendor/bin/phpunit"
alias codecept="./vendor/bin/codecept"
alias eslint="./node_modules/.bin/eslint"
alias webpack="./node_modules/.bin/webpack"

# Images
image() {
    curl "https://unsplash.it/${1-600}/${2-$1}?random" > ${3-image}.jpg
}

# Python
alias py="python3"
