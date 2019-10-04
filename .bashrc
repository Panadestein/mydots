stty -ixon

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export PAGER="most"

# Directory name changes directory
shopt -s autocd

# Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias news="newsbeuter"
alias email="mutt"
alias files="ranger"
alias chat="weechat"
alias audio="ncpamixer"
alias calender="calcurse"

# Some aliases
alias unix72="docker run --rm -it bahamat/unix-1st-ed"
alias v="vim"
alias s="subl"
alias e='emacsclient -a "" -nw'
alias cfe="e ~/.emacs.d/init.el"
alias vb="vim ~/.bashrc"
alias ka="killall"
alias sv="sudo vim"
alias ls='ls -hN --color=auto --group-directories-first'
alias gitup="git push origin master"
alias mkdir="mkdir -pv"
alias crep="grep --color=always"
alias sdn="sudo shutdown now"
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias starwars="telnet towel.blinkenlights.nl"
alias nf="clear && neofetch"
alias newnet="sudo systemctl restart NetworkManager"
alias youtube="youtube-viewer"
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"
alias TC='texclear'
alias trmi="transmission-cli"
alias ref="python ~/.config/Scripts/shortcuts.py && source ~/.bashrc"
alias bw="wal -i ~/.config/wall.png"
alias jour1="journalctl -p 3 -xb"
alias jour2="journalctl -xb | grep rror"
alias jpy="ssh -X -N -f -L localhost:8893:localhost:8880 192.168.43.1 -p 8022 -i ~/Documents/Software/evangelion"
alias termux="ssh 192.168.43.1 -p 8022 -i ~/Documents/Software/evangelion"
alias jnb="jupyter notebook"
alias pacorf="sudo pacman -Rns $(pacman -Qtdq)"
alias pepe="autopep8 --in-place --aggressive --aggressive"

#Music
alias pause="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias trupause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"

# Check the weather:
weath() { curl wttr.in/$1 ;}

# Install an AUR package manually (for Parabola to get AUR access):
aurinstall() { curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz && tar -xvf $1.tar.gz && cd $1 && makepkg --noconfirm -si && cd .. && rm -rf $1 $1.tar.gz ;}
bl() { convert $@ -resize 1440x1080\> bl_$@ ;}
CF() { cd ~/.config/$1 && ls ;}
isrun() { ps -A | grep $1;}
guatab() { guake -n $1;}
tpy() {
tmux new-session -d 'vim '$1
tmux new-window ''
tmux split-window -h
tmux split-window -v 'ipython'
tmux -2 attach-session -d 
}

alias sakura="ssh -Y ramon@sakura.univ-lille1.fr"
alias sakup="sftp ramon@sakura.univ-lille1.fr"
alias wion="nmcli r wifi on"
alias wioff="nmcli r wifi off"
alias diff='diff --color=auto'
alias grep='grep --color=auto'

# NLopt stuff
#export PYTHONPATH="${PYTHONPATH}:/usr/local/lib/python3.6/site-packages/"

# Modify PATH
export PATH=$PATH:~/.local/bin

figlet -t 'Bash'

# MOPAC stuff

export LD_LIBRARY_PATH='/home/rpanades/bin/MOPACMINE'
export MOPAC_LICENSE='/home/rpanades/bin/MOPACMINE'
alias mopac='/home/rpanades/bin/MOPACMINE/MOPAC2016.exe'

# Directory Shortcuts:
alias h="cd ~ && ls -a"
alias d="cd ~/Documents && ls -a"
alias D="cd ~/Downloads && ls -a"
alias p="cd ~/Pictures && ls -a"
alias m="cd ~/Music && ls -a"
alias b="cd ~/Books && ls -a"
alias scrp="cd ~/.config/Scripts && ls -a"
alias cf="cd ~/.config && ls -a"
alias cfb="vim ~/.config/Scripts/bashrc"
alias cfz="vim ~/.zshrc"
alias cfv="vim ~/.vimrc"
alias cfr="vim ~/.config/ranger/rc.conf.base"
alias cfi="vim ~/.config/i3/config"
alias cfq="vim ~/.config/qutebrowser/keys.conf.base"
alias cfQ="vim ~/.config/qutebrowser/qutebrowser.conf"
alias cfm="vim ~/.config/mutt/muttrc"
alias cfM="vim ~/.config/moc/keymap"
alias cff="vim ~/.config/Scripts/folders"
alias cfc="vim ~/.config/Scripts/configs"
alias cft="vim ~/.config/termite/config"
alias cfT="vim ~/.config/Scripts/tmux.conf"
alias eb="vim ~/Documents/LaTeX/uni.bib"
alias cv="vim ~/Documents/LaTeX/cv.tex"
alias cfl="vim ~/.config/mutt/lukexyz.info"
alias cfx="vim ~/.config/mutt/luxmyth.info"
alias cfk="vim ~/.config/mutt/kulade.cock"
alias cfo="vim ~/.config/mutt/kulade.info"
alias cfa="vim ~/.config/mutt/aliases"
alias cfp="vim ~/.config/polybar/config"
alias cfd="vim ~/.Xdefaults"
alias TO="vim ~/Creations/Videos/todo.md"

#*MCTDH*A***********************************************************************
# Following lines written by install_mctdh.  Mon 16 Sep 2019 12:16:36 AM CEST
export MCTDH_DIR=/home/rpanades/Documents/Software/mctdh853
. $MCTDH_DIR/install/mctdh.profile
if [ -f ~/.mctdhrc ] && [ -t 0 ] ; then . ~/.mctdhrc ; fi
#*MCTDH*B***********************************************************************

# Manage dot files (https://news.ycombinator.com/item?id=11070797)

alias dotfiles='/usr/bin/git --git-dir=$HOME/.mydots/ --work-tree=$HOME'
