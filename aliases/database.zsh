__env() {
    if [ ! -f .env ]; then
        echo $2 && return
    fi

    # get value from .env
    local value=$(cat .env | grep "$1=" | sed "s/$1=//")

    # return value or default
    echo $([[ "$value" ]] && echo "$value" || echo "$2")
}

__mysqlCompose() {
    echo "mysql --user="$(__env DB_USERNAME root)" --password="$(__env DB_PASSWORD secret)""
}

__mysql() {
    if [[ $1 ]]; then
        eval "$(__mysqlCompose) --database='$(__env DB_DATABASE)' --execute='select * from $1'" && return
    fi

    eval "$(__mysqlCompose) --database='$(__env DB_DATABASE)'"
}

__sqlite() {
    if [[ $1 ]]; then
        eval "sqlite3 database/database.sqlite 'select * from $1'" && return
    fi

    eval "sqlite3 database/database.sqlite"
}

db() {
    case $(__env DB_CONNECTION 'mysql') in
        (mysql) __mysql $1 ;;
        (sqlite) __sqlite $1 ;;
    esac
}

mkdb() {
    eval "$(__mysqlCompose) --execute='create database $1'"
}

dropdb() {
    eval "$(__mysqlCompose) --execute='drop database $1'"
}

freshdb() {
    dropdb $1 && mkdb $1
}
