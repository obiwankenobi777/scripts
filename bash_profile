#
# ~/.bash_profile
#

# If running from tty1 start sway
if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
    exec sway
fi

. "$HOME/.cargo/env"
