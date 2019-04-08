# custom commands

alias cdapp='cd ~/Code/app/'
# get the logs for the latest cli file, handy when writing tests
alias taillogs='cd ~/Code/app/storage/logs && tail -f -n 70  "`ls | grep cli | tail -n 1`" | grep -A50 "ERROR"'

# clean curent branch
alias nah='git reset --hard && git clean -fd'

# custom functions

# get the history with a filter but dont show repeated duplicates or run number
h() {
    history | grep -i "$1" | sed 's/.[ ]*.[0-9]*.[ ]*//' | uniq
}