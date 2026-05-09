# Loc: ~/.bashrc

# Home made aliases
alias copy="xclip -selection clipboard"
alias chw="feh --bg-fill --randomize --recursive ~/Pictures/Wallpapers"
alias scrot="scrot -d b5" # screenshot after 5s
alias susp="sudo systemctl suspend"
alias mount="udiskie-mount -a"
alias unmount="udiskie-umount -a"
alias temp="watch -n 1 sensors"
alias pico8="~/Games/Pico8/pico8"
alias light+="brightnessctl set 10%+"
alias light-="brightnessctl set 10%-"
alias venv="source ~/.venv/bin/activate"

alias gitpass="cat ~/Github/.password | xclip -selection clipboard"

# Default aliases
[[ $- != *i* ]] && return # Stop if not running
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '