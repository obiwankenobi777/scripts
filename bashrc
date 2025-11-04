# 
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
PS1='\[\e[37m\]\w/ $\[\e[0m\] '

#exports
export PATH=/home/ian/.local/bin:$PATH
export EDITOR=helix

#alias
# brightnessctl
alias b="brightnessctl"
alias guides="cd ~/.code/guides/"
alias fet="clear && fastfetch"
alias cls="clear"
alias audio="pulseaudio -k && pulseaudio --start"
alias config="cd ~/.config/"
alias scripts="cd ~/.config/scripts/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias vimrc="vim ~/.config/vim/vimrc"
alias hxrc="helix ~/.config/helix/config.toml"
alias wmrc="vim ~/.config/sway/config"
alias termrc="vim ~/.config/foot/foot.ini"
alias bashrc="helix ~/.bashrc"
alias proc="ps aux | wc -l"
alias disk="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias today="cal --week && date && uptime -p && days"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && yay" 
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C | less"
alias ..="cd .."
alias yz="yazi"
alias f="helix"
alias v="vim"
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

#FUNCTIONS
mkd() { mkdir -p "$1" && cd "$1"; }
venv() {
  if [[ ! -d "./venv" ]]; then
    python3 -m venv venv
    cd venv
    source ./bin/activate
    pip install python-lsp-server
  else
    cd venv
    source ./bin/activate
fi
}
