#--------------------------------------------------
#                _________  _   _ 
#               |__  / ___|| | | |
#                 / /\___ \| |_| |
#                / /_ ___) |  _  |
#               /____|____/|_| |_|
#
# This is my zsh config, for now using oh-my-zsh...
#
# This setup requires a couple of packages
# to be manually installed:
#
# zsh-autosuggestions; zsh-syntax-highlighting,
# tmux, figlet
#--------------------------------------------------

# Export environmental variables

export PATH=$HOME/bin:~/.local/bin:/usr/local/bin:$PATH
export ZSH="/home/rpanades/.oh-my-zsh"

# Theme from oh-my-zsh

ZSH_THEME="desteinp"
zstyle ':omz:update' mode reminder

# Autocompletion options

# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# Command auto-correction and eye candy completion

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Oh-my-zsh plugins

plugins=(git zsh-autosuggestions web-search copydir history)
source $ZSH/oh-my-zsh.sh

# User side configuration

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export LD_LIBRARY_PATH='/home/rpanades/bin/MOPACMINE'
export MOPAC_LICENSE='/home/rpanades/bin/MOPACMINE'

# Functions

isrun() { ps -A | grep $1;}
tpy() {
    # Create Bash, Python and Emacs session
    tmux new-session -d 'emacs -nw'$1
    tmux new-window ''
    tmux split-window -h
    tmux split-window -v 'ipython'
    tmux -2 attach-session -d
}

# Aliases for remote machines

alias sakura="ssh -Y ramon@sakura.univ-lille1.fr"
alias sssara="ssh -Y panades@doornode.surfsara.nl"
alias ccpgate="ssh -Y panades@ccpgate.tnw.utwente.nl"
alias tau="ssh -Y rapa157d@taurus.hrsk.tu-dresden.de"
alias tume="ssh -Y rbarrueta@cpch06.chm.tu-dresden.de"
alias tukup="sftp rbarrueta@cpch06.chm.tu-dresden.de"
alias sakup="sftp ramon@sakura.univ-lille1.fr"
alias toul="ssh panades@lpqsv11.ups-tlse.fr"

# General aliases

alias e='emacsclient'
alias v="nvim"
alias n='neovide --maximized'
alias sbl="subl"
alias sb="source ~/.bashrc"
alias sz="source ~/.zshrc"
alias ka="killall"
alias sv="sudo nvim"
alias jour1="journalctl -p 3 -xb"
alias jour2="journalctl -xb | grep rror"

# Aliases for configuration files

alias cfb="e ~/.bashrc"
alias cfz="e ~/.zshrc"
alias vb="nvim ~/.bashrc"
alias vz="nvim ~/.zshrc"
alias cfe="e ~/.emacs.d/init.el"
alias cde="cd ~/.emacs.d/"
alias cfv="vim ~/.vimrc"
alias cfn="neovide --maximized ~/.config/nvim/init.vim"

# Less useful aliases

alias wo='figlet -t "$(hostname)"'
alias nf="clear && neofetch"
alias jnb="jupyter notebook"
alias mopac='/home/rpanades/bin/MOPACMINE/MOPAC2016.exe'
alias unix72="docker run --rm -it bahamat/unix-1st-ed"
alias starwars="telnet towel.blinkenlights.nl"

# Give me a nice and warm welcome

figlet -t "$(hostname)"
