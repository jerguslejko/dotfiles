# Laravel
alias art="php artisan --verbose"
alias tinker="php artisan tinker --verbose"
alias fresh="php artisan migrate:refresh --seed --verbose"

laranew() {
    if [ ! $1 ]; then
        echo "Please, provide a project name." && return
    fi

    local project=$1;

    # Laravel
    laravel new $project

    cd $project

    # Git
    git init
    git add .
    git commit -m "Initial commit."

    # Database
    sed -i '' '/DB_HOST/d; /DB_PORT/d; /DB_DATABASE/d; /DB_USERNAME/d; /DB_PASSWORD/d; /DB_CONNECTION/s/mysql/sqlite/' .env
    touch database/database.sqlite

    # Browser
    valet secure $1
}

# Node
alias npm="npm --no-progress"

# Vagrant
alias v="vagrant"

# Editing
alias vi="vim"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# SVN
alias svn_add="svn st | grep '?' | awk '{print \$2}' | xargs svn add"
alias svn_rm="svn st | grep '!' | awk '{print \$2}' | xargs svn rm"
alias svnci="svn_add && svn_rm && svn ci -m"

# Testing
alias phpunit="./vendor/bin/phpunit"

# Images
image() {
    curl "https://unsplash.it/${1-600}/${2-$1}?random" > ${3-image}.jpg
}

# Python
alias py="/usr/local/bin/python3.5"