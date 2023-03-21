alias v=volker
alias vrust='volker-rust'
alias mfs='volker-rust artisan migrate:fresh --seed'
alias vc='volker composer'
alias vcu='volker composer update'
alias vini='volker-rust init'
alias vr='vd && vu'
alias vp='volker-rust prepare'
alias vu='~/Projects/volker/volker up'
alias vup='vu'
alias va='volker about'
alias vas='volker about | grep Status'
alias vex='volker-rust exec app'
alias vart='volker-rust artisan'
alias vtink='volker-rust artisan tinker'
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

# vu() {
#     CD_PATH="${1:=./}"
#     shift

#     cdUpAndRun "$CD_PATH" "~/Projects/volker/volker up $*"
# }

vd() {
    CD_PATH="${1:=./}"

    cdUpAndRun $CD_PATH "volker-rust down"
}

ve() {
    CD_PATH="${1:=./}"

    cdUpAndRun $CD_PATH "volker-rust enter"
}
