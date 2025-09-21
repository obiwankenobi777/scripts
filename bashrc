#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
PS1='\[\e[37m\]\w/ $\[\e[0m\] '

# If running from tty1 start sway
#[[ -z $DISPLAY && $(tty) = /dev/tty1 ]] && exec sway

#EXPORTS
. "$HOME/.deno/env"
. "$HOME/.cargo/env"
export PATH=/home/ian/.local/bin:$PATH
export EDITOR=helix

#ALIAS
alias guides="cd ~/.code/guides/"
alias fet="clear && fastfetch"
alias cls="clear"
alias audio="pulseaudio -k && pulseaudio --start"
alias config="cd ~/.config/"
alias scripts="cd ~/.config/scripts/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias hxrc="helix ~/.config/helix/config.toml"
alias wmrc="helix ~/.config/sway/config"
alias termrc="helix ~/.config/foot/foot.ini"
alias bashrc="helix ~/.bashrc"
alias proc="ps aux | wc -l"
alias b="brightnessctl"
alias disco="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias today="cal --week && date && uptime -p && days"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && yay && rustup update && deno upgrade" 
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C | less"
alias ~="cd ~"
alias ..="cd .."
alias yz="yazi"
alias f="helix"
alias j="helix"
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
