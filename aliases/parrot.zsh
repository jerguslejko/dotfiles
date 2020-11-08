alias py="python3"
alias pyman="python3 manage.py"
alias pyrun="python3 manage.py runserver"
alias pytest="python3 manage.py test --keepdb --exclude-tag=external"

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
    if [[ $0 -eq "shell" ]]; then
        cd ~/Code/parrot && docker-compose exec api bash
    fi
}

export PATH="$PATH:~/.composer/vendor/bin"

# If you are on MacOS and have many popups about Chromium when these tests run, please see: https://github.com/puppeteer/puppeteer/issues/4752
alias sign_puppeteer="sudo codesign --force --deep --sign - ./node_modules/puppeteer/.local-chromium/mac-*/chrome-mac/Chromium.app"
alias sign_electron="sudo codesign --force --deep --sign - ./node_modules/electron/dist/Electron.app"
