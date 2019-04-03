# env var
export EDITOR="nvim"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

function geoip {
    url="ipinfo.io/"$1
    echo $url
    curl $url
}

# alias
alias rm="trash"
alias vi="nvim"
alias vim="nvim"
alias python="python3"
alias pip="pip3"
alias diff="git diff --no-index"

# Fix Lync sign in issue
alias fixlync="rm ~/Library/Keychains/OC_KeyContainer__*-db"

