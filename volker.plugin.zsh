alias v=volker
alias mfs='volker artisan migrate:fresh --seed'
alias vc='volker composer'
alias vcu='volker composer update'
alias vini='volker init'
alias vr='volker down && volker up'
alias vp='volker prepare'
alias vup='vu'
alias va='volker about'
alias vas='volker about | grep Status'
alias vex='volker exec app'
alias vart='volker artisan'
alias vtink='volker artisan tinker'
alias vnuke='docker kill $(docker ps -q); docker system prune; docker volume prune --filter "label!=volker.preserve=true"'
alias vdb='volker db:open'
alias vrun='volker run'

cdUpAndRun() {
    CD_PATH="$1"
    CMD_TO_RUN="$2"

    if [ $CD_PATH = "./" ]; then
        eval "$CMD_TO_RUN"
    else
        (cd $CD_PATH && echo "Running from: ${PWD}" && eval "$CMD_TO_RUN")
    fi
}

vu() {
    CD_PATH="${1:=./}"

    cdUpAndRun $CD_PATH "volker up"
}

vd() {
    CD_PATH="${1:=./}"

    cdUpAndRun $CD_PATH "volker down"
}

ve() {
    CD_PATH="${1:=./}"

    cdUpAndRun $CD_PATH "volker enter"
}
