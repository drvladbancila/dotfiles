# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
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
. "$HOME/.cargo/env"

###########
# ALIASES #
###########

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias grepr='grep -r .'
alias findn='find . -name'
alias nv='neovide'

#########
# PATHS #
#########
QUARTUS_DIR="/usr/local/intelFPGA_lite/20.1/quartus/bin"
MODELSIM_DIR="/usr/local/intelFPGA_lite/20.1/modelsim_ase/bin"
export QSYS_ROOTDIR="/usr/local/intelFPGA_lite/20.1/quartus/sopc_builder/bin"
# Add Quartus to PATH
export PATH="$QUARTUS_DIR:$PATH"
export PATH="$MODELSIM_DIR:$PATH"
