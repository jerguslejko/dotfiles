# Laravel
alias art="php artisan --verbose"
alias tink="php artisan tinker --verbose"
alias fresh="php artisan migrate:refresh --seed --verbose && log:clear"
alias log:clear="rm storage/logs/*"
alias log:view="cat storage/logs/laravel.log"

# Vagrant
alias v="vagrant"

# Editing
alias vi="vim"

# SVN
alias svn:add="svn st | grep '?' | awk '{print \$2}' | xargs svn add"
alias svn:rm="svn st | grep '!' | awk '{print \$2}' | xargs svn rm"
alias svn:ci="svn:add && svn:rm && svn ci -m"
alias svn:log="svn log -l 5"
alias svn:diff="svn diff | less"

# Testing
alias phpunit="./vendor/bin/phpunit"

# Images
image() {
    curl "https://unsplash.it/${1-600}/${2-$1}?random" > ${3-image}.jpg
}

# Python
alias py="/usr/local/bin/python3.5"
