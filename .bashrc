# Loc: ~/.bashrc

# Home made aliases
alias copy="xclip -selection clipboard"
alias chw="feh --bg-fill --randomize --recursive ~/Pictures/Wallpapers/aesthetic-wallpapers"
alias scrot="scrot -d b5" # screenshot after 5s
alias susp="sudo systemctl suspend"

# Default aliases
[[ $- != *i* ]] && return # Stop if not running
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '