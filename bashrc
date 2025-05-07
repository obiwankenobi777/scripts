#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
#PS1=' \W > '
PS1=' \W \$ '

#btw... i use arch
#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#    startx
#fi

#export XDG_CURRENT_DESKTOP=sway
export PATH=/home/ian/.local/bin:$PATH

alias audio="pulseaudio -k && pulseaudio --start"
alias index="vim index.html"
alias readme="vim readme || vim README"
alias cl="cd ~/downloads; rm -v *jpg *jpeg *png *webp *avif *jpg!d; ls"
alias fet="clear; neofetch"
alias code="cd ~/.code/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias scripts="cd ~/.config/scripts/"
alias wmrc="vim ~/.config/sway/config"
alias termrc="vim ~/.config/foot/foot.ini"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias proc="ps aux | wc -l"
alias bright="brightnessctl"
alias disco="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias day="cal --week && date && uptime -p"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && yay" 
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C"
alias ~="cd ~"
alias ..="cd .."
alias v="vim"
alias py="python3"
alias ipy="ipython"
alias sql="sqlite3"
alias ls='ls --color=auto'
alias l="ls -F"
alias ll="ls -lia"
alias la="ls -a"
alias grep='grep --color=auto'
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
