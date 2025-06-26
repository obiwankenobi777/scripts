#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
#PS1=' \W \$ '
PS1='\[\e[37m\]\w/ $\[\e[0m\] '

# If running from tty1 start sway
#[[ -z $DISPLAY && $(tty) = /dev/tty1 ]] && exec sway

. "$HOME/.cargo/env"
export PATH=/home/ian/.local/bin:$PATH

alias bar="(cd ~/code/db && sqlite3 < foo.sql | less)"
alias spy="cd ~/code/spy/venv/ && source ./bin/activate"
alias fet="clear; fastfetch"
alias cls="clear"
alias audio="pulseaudio -k && pulseaudio --start"
alias cl="cd ~/downloads; rm -v *jpg *jpeg *png *webp *avif *jpg!d *mp4 *svg; ls"
alias scripts="cd ~/.config/scripts/"
alias guides="cd ~/code/guides/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias vimrc="nvim ~/.config/nvim/init.lua"
alias hxrc="helix ~/.config/helix/config.toml"
alias wmrc="helix ~/.config/sway/config"
alias termrc="helix ~/.config/foot/foot.ini"
alias bashrc="helix ~/.bashrc"
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
alias f="helix"
alias j="helix"
alias sql="sqlite3"
alias py="python"
alias ipy="ipython"
alias ls='ls --color=auto'
alias l="ls -F"
alias ll="ls -lia"
alias la="ls -a"
alias grep='grep --color=auto'
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
