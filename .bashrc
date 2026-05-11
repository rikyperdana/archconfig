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
alias htopi="htop --no-function-bar"
alias connect="~/Github/Configs/connect.sh"
alias tmuxbrix="~/Github/Configs/tmuxbrix.sh"
alias webhome="firefox gemini.google.com web.whatsapp.com &"

# Git commands
alias gitpass="cat ~/Github/.password | xclip -selection clipboard"
alias gitpush="git add -A && git commit -m "update" && git push"

# Youtube
alias mpv3="mpv --display-tags=false --no-video"
alias ytmp3="yt-dlp -x --audio-format mp3"
alias ytstr="mpv --ytdl-format='bestvideo[height<=240]+bestaudio/best'"

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

# Default aliases
[[ $- != *i* ]] && return # Stop if not running
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '