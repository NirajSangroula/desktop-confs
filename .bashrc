# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias k="minikube kubectl -- "
alias kubectl=k
alias keyboard="./.config/i3/startup.sh"
alias gnome="startx /usr/bin/gnome-session -- :1 vt$(tty | grep -o '[0-9]*')"
alias startGnome="/usr/bin/vmware-view"
export PATH="$PATH:$HOME/Downloads/apache-jmeter-5.6.3/bin"
