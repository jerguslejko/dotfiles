__env() {
    local key=$1
    local value

    if [[ ! -f .env ]]; then
        return
    fi

    if [[ ! "$key" ]]; then
        echo "usage: __env key" && return 1
    fi

    value=$(grep --invert-match "^\s*#" .env | grep "$key=")

    if [[ ! "$value" ]]; then
        return
    fi

    echo "${value//$key=/}"
}

__mysqlCompose() {
    echo "mysql --user='$(__env DB_USERNAME)' --password='$(__env DB_PASSWORD)'"
}

__mysql() {
    if [[ $1 ]]; then
        eval "$(__mysqlCompose) --database='$(__env DB_DATABASE)' --execute='select * from \`$1\`'" && return
    fi

    eval "$(__mysqlCompose) --database='$(__env DB_DATABASE)'"
}

db() {
    __mysql "$1"
}

dbs() {
    eval "$(__mysqlCompose) --database='$(__env DB_DATABASE)' --execute='describe \`$1\`'"
}

mkdb() {
    eval "$(__mysqlCompose) --execute='create database \`$1\`'"
}

dropdb() {
    eval "$(__mysqlCompose) --execute='drop database \`$1\`'"
}

freshdb() {
    dropdb "$1" && mkdb "$1"
}
