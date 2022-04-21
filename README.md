# Oh-My-ZSH plugin for Volker

This plugin adds handy aliases when working with Volker.

| Alias | Runs command |
| ----- | ------------ |
| `v` | `volker` |
| `vc` | `volker composer` |
| `vd` | `volker down` |
| `ve` | `volker enter` |
| `vini` | `volker init` |
| `vp` | `volker prepare` |
| `vr` | `volker down && volker up` |
| `vu` | `volker up` |
| `vup` | `volker up` |
| `vex` | `volker exec app` |
| `vart` | `volker artisan` |
| `vtink` | `volker artisan tinker` |
| `vnuke` | `docker kill $(docker ps -q); docker system prune; docker volume prune` |
| `mfs` | `volker php artisan migrate:fresh --seed` |

## Installation

### Antigen

Using [Antigen](https://github.com/zsh-users/antigen), it becomes really easy to add and update plugins for zsh.

1. Open up your `.antigenrc` file, and add:

`antigen bundle adamtomat/volker-aliases`

2. Restart terminal

**To update:**

`antigen update adamtomat/volker-aliases`

### Manual 

1. To install volker-aliases, simply clone the repo...

`git clone https://github.com/adamtomat/volker-aliases.git ~/.oh-my-zsh/custom/plugins/volker-aliases`

2. Add at or near the top of your .zshrc file (before any calls to compdef): 

`source ~/.oh-my-zsh/custom/plugins/volker-aliases/volker.plugin.zsh`

3. Restart your shell

