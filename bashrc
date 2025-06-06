#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
#PS1=' \W \$ '
PS1='\[\e[34m\]\w/ $\[\e[0m\] '

# If running from tty1 start sway
#[[ -z $DISPLAY && $(tty) = /dev/tty1 ]] && exec sway

export PATH=/home/ian/.local/bin:$PATH

alias fet="clear; fastfetch"
alias so="source ~/.bashrc"
alias cls="clear"
alias audio="pulseaudio -k && pulseaudio --start"
alias readme="nvim readme || nvim README"
alias cl="cd ~/downloads; rm -v *jpg *jpeg *png *webp *avif *jpg!d *mp4; ls"
alias scripts="cd ~/.config/scripts/"
alias guides="cd ~/code/guides/"
alias code="cd ~/code/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias wmrc="nvim ~/.config/sway/config"
alias termrc="nvim ~/.config/foot/foot.ini"
alias vimrc="nvim ~/.config/nvim/init.lua"
alias bashrc="nvim ~/.bashrc"
alias proc="ps aux | wc -l"
alias b="brightnessctl"
alias disco="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias day="cal --week && date && uptime -p"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && yay" 
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C | less"
alias ~="cd ~"
alias ..="cd .."
alias v="nvim"
alias n="nvim"
alias sql="sqlite3"
alias py="python"
alias ls='ls --color=auto'
alias l="ls -F"
alias ll="ls -lia"
alias la="ls -a"
alias grep='grep --color=auto'
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
. "$HOME/.cargo/env"
