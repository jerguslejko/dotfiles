#! /usr/bin/env bash

CLASS="$1"
TEST="$2"
PWD="$3"

FILE=$(php -r "echo (include '$PWD/vendor/composer/autoload_classmap.php')['$CLASS'];")
LINE=$(grep -n "$FILE" -e "$TEST" | awk -F ':' '{ print $1 }')

/usr/local/bin/code -g "$FILE:$LINE"
