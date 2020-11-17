alias py="python3"
alias pip="/usr/local/bin/pip3"
alias python="/usr/local/bin/python3"

alias pyman="python3 manage.py"
alias pyrun="python3 manage.py runserver"
alias pytest="python3 manage.py test --keepdb --exclude-tag=external"

alias dc="docker-compose"

export HUSKY_SKIP_INSTALL=true

k9s() {
    echo "error: either use [k9s_production] or [k9s_sandbox]" && return 1
}

k9s_production() {
    /usr/local/bin/k9s --context arn:aws:eks:us-east-1:325310340739:cluster/production
}

k9s_sandbox() {
    /usr/local/bin/k9s --context arn:aws:eks:us-east-1:325310340739:cluster/sandbox
}

parrot() {
    python3 ~/Code/.parrot/bar/cli.py $@
}

export PATH="$PATH:$HOME/Library/Python/3.8/bin"

# see: https://github.com/puppeteer/puppeteer/issues/4752
alias sign_puppeteer="sudo codesign --force --deep --sign - ./node_modules/puppeteer/.local-chromium/mac-*/chrome-mac/Chromium.app"
alias sign_electron="sudo codesign --force --deep --sign - ./node_modules/electron/dist/Electron.app"
