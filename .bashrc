gobuild() {
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"' "$@"
}

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"

export CLICOLOR_FORCE=1 # Force color for less

alias less='less -FiX -r'
alias ipcalc='~/bin/ipcalc'
export HISTTIMEFORMAT="%h/%d - %H:%M:%S $ "

alias vi='vim -p'
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alarm() { perl -e 'alarm shift; exec @ARGV' "$@"; }

nosleep() {
        sudo pmset -a sleep 0
}

getpass() {
        security -q find-generic-password -a `whoami` -w -s "$1"
}

dates() {
        echo -en "PST: "; TZ=PST8PDT date
        echo -en "UTC: "; TZ=UTC     date
        echo -en "IST: "; TZ='Asia/Calcutta'     date
}

export HISTTIMEFORMAT="%h/%d - %H:%M:%S $ "
shopt -s checkwinsize

export EDITOR=vi VISUAL=vi
alias ls='ls -lph -G'
export TERM=xterm-256color

alias er="~/bin/er"


alias er="~/bin/er"

