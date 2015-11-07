#
# ~/.bashrc
#

#
# LANGUAGE
#

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

#
# SHELL
#


# Append instead of overwrite history.
shopt -s histappend
# Properly save multi-line commands.
shopt -s cmdhist
# Don't replace newlines with semicolons in history.
shopt -s lithist
# Fix typos when changing directories.
shopt -s cdspell

#
# HISTORY
#

# Write more history.
export HISTFILESIZE=2000
# Remember more history.
export HISTSIZE=2000

#
# ALIASES
#

alias reload="exec $SHELL -l"

alias ls="ls -G"
alias ll="ls -otW"
alias la="ls -a"
alias l="clear"
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ~="cd ~"
alias v="vim"
alias t="tmux"
alias ta="tmux attach"
alias yt="youtube-dl"
alias mp3='youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 320k'
alias gif='convert -delay 35 -loop 0 source*.png animated.gif'

alias jeju="sh ~/chromebook/Scripts/weather.sh "jeju""
alias kingscliff="sh ~/chromebook/Scripts/weather.sh "kingscliff""
alias melbourne="sh ~/chromebook/Scripts/weather.sh "melbourne""

#
# HELPERS
#

# Make a directory and change to it.
function mkcd {
  mkdir -p "$1" && cd "$1"
}

function play {
  youtube-dl --default-search=ytsearch: \
             --youtube-skip-dash-manifest \
             --output="${TMPDIR:-/tmp/}%(title)s-%(id)s.%(ext)s" \
             --restrict-filenames \
             --format="bestaudio[ext!=webm]" \
             --exec=vlc -vvv "$*"
}

# What is love?
alias whatislove?="play what it love"

#
# PREFERENCES
#

export EDITOR=vim
export PS1="\[\e[34m\]\w\[\e[m\] \[\e[32m\]>\[\e[m\] """

