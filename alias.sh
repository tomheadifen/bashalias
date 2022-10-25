# custom commands

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

alias ls='ls -G'
alias ll='ls -lG'
alias cdweb="cd ~/Code/"
alias cdrepo="cdweb; cd WhoPlusYou-Html5/"
alias cdlogs="cdrepo; cd storage/logs/"

##color tail -f to highlight queries and errors
colortailf() {
        tail -f $1 | awk '
         /INSERT/ || /POST/ || /SELECT/ || /DELETE/ {print "\033[32m" $0 "\033[39m"}
         /ERROR/ {print "\033[31m" $0 "\033[39m"}
        '
}
alias ctail=colortailf

alias taillogs='cd ~/Code/WhoPlusYou-Html5/app/storage/logs && tail -f -n 70  "`ls | grep cli | tail -n 1`" | grep -A50 "ERROR"'
