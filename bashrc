# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '
PS1='\[\e[37m\]\w/ $\[\e[0m\] '

##################################################################
#EXPORTS
##################################################################
# eval "$(luarocks path)"
export PATH=/home/ian/.local/bin:$PATH
export EDITOR=vim

##################################################################
#ALIAS
##################################################################
# brightnessctl
alias jeff="cd $HOME/force/jeff/"
alias asm="cd $HOME/force/asm/"
alias extreme="cd $HOME/force/extreme/"
alias beejs="cd $HOME/force/beejs/"
alias lewis="cd $HOME/force/love/"
alias guides="cd $HOME/.config/code/guides/"
alias downloads="cd ~/downloads/"
alias books="cd ~/books/"
alias config="cd ~/.config/"
alias scripts="cd ~/.config/scripts/"
alias cls="clear"
alias b="brightnessctl"
alias audio="pulseaudio -k && pulseaudio --start"
alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.config/vim/vimrc"
alias wmrc="vim ~/.config/sway/config"
alias termrc="vim ~/.config/foot/foot.ini"
alias proc="ps aux | wc -l"
alias disk="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias today="cal --week && date && uptime -p && days"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && yay -Syu"
alias remove="sudo pacman -Rsnc"
alias ..="cd .."
alias yz="yazi"
alias v="vim"
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
        pip install --upgrade pip "$@"
        clear
    else
        cd venv/spy
        source ../bin/activate
    fi
}
