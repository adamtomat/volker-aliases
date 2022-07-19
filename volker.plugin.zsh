alias v=volker
alias mfs='volker artisan migrate:fresh --seed'
alias vc='volker composer'
alias vcu='volker composer update'
alias vd='volker down'
alias ve='volker enter'
alias vini='volker init'
alias vins='volker install'
alias vr='volker down && volker up'
alias vu='volker up'
alias vup='volker up'
alias vex='volker exec app'
alias vart='volker artisan'
alias vtink='volker artisan tinker'
alias vnuke='docker kill $(docker ps -q); docker system prune; docker volume prune --filter "label!=volker.preserve=true"'
alias vdb='volker db:open'
