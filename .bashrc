# Loc: ~/.bashrc

# Home made aliases
alias copy="xclip -selection clipboard"
alias chw="feh --bg-fill --randomize --recursive ~/Pictures/Wallpapers"
alias scrot="scrot -d b5" # screenshot after 5s
alias susp="sudo systemctl suspend"
alias logoff="echo 'awesome.quit()' | awesome-client"
alias mount="udiskie-mount -a"
alias unmount="udiskie-umount -a"
alias temp="watch -n 1 sensors"
alias pico8="~/Games/Pico8/pico8"
alias light+="brightnessctl set 10%+"
alias light-="brightnessctl set 10%-"
alias venv="source ~/.venv/bin/activate"
alias htopi="htop --no-function-bar"
alias connect="~/Github/Configs/connect.sh"
alias tmuxbrix="~/Github/Configs/tmuxbrix.sh"
alias fixspaces="find . -depth -name '* *' -exec rename 's/ /_/g' {} +"
alias journaldate="date +'%H:%M:%S - %a %d %b %Y'"

alias mpv4="mpv --really-quiet"
alias mpv3="mpv --display-tags=false --no-video"

# Git commands
alias gitpass="cat ~/Github/.password | xclip -selection clipboard"
alias gitpush="git add -A && git commit -m "update" && git push"

# From and To Markdown
doc2md() { # doc2md file.docx file.md
  markitdown "$1" > "${1%.*}.md"
}
md2doc() { # md2doc file.md file.docx
  if [ -n "$3" ]; then
    pandoc "$1" --reference-doc="$3" -o "$2"
  else
    pandoc "$1" -o "$2"
  fi
}

# Text Search
search() { # search keyword location
  [ "$#" -gt 0 ] && grep -rl "$1" "${2:-.}" \
  | head -n 100 | fzf --preview 'cat {}' \
  --bind 'enter:execute(nano {})'
}

# PDF edit
pdf-merge() { # pdf-merge file1 file2 ... resFile
  local output="${@: -1}"
  local inputs=("${@:1:$#-1}")
  qpdf --empty --pages "${inputs[@]}" -- "$output"
}
pdf-keep() { # pdf-keep input "1-5,8-z" output
  qpdf "$1" --pages . "$2" -- "$3"
}

# Default aliases
[[ $- != *i* ]] && return
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Exports
export EDITOR="nano"
export PATH="$HOME/.local/bin:$PATH"