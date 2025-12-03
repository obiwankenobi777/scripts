# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1='\[\e[37m\]\w/ $\[\e[0m\] '

##################################################################
#EXPORTS
##################################################################
# eval "$(luarocks path)"
export PATH=/home/ian/.local/bin:$PATH
export EDITOR=nvim

##################################################################
#ALIAS
##################################################################
# brightnessctl
alias b="brightnessctl"
alias guides="cd ~/.code/guides/"
alias cls="clear"
alias audio="pulseaudio -k && pulseaudio --start"
alias config="cd ~/.config/"
alias scripts="cd ~/.config/scripts/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias vimrc="vim ~/.config/vim/vimrc"
alias nvimrc="nvim ~/.config/nvim/init.lua"
alias wmrc="nvim ~/.config/sway/config"
alias termrc="nvim ~/.config/foot/foot.ini"
alias bashrc="nvim ~/.bashrc"
alias proc="ps aux | wc -l"
alias disk="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias today="cal --week && date && uptime -p && days"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && paru -Syu"
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C | less"
alias ..="cd .."
alias yz="yazi"
alias v="nvim"
alias n="nvim"
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

##################################################################
#FUNCTIONS
##################################################################
mkd() { mkdir -p "$1" && cd "$1"; }
venv() {
    if [[ ! -d "./venv" ]]; then
        python3 -m venv venv
        cd venv
        source ./bin/activate
        mkdir spy && cd spy
        pip install --upgrade pip
        pip install python-lsp-server "$@"
        clear
    else
        cd venv/spy
        source ../bin/activate
    fi
}
