### EXPORT ###
export EDITOR='nvim'
export VISUAL='nvim'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='less'
alias v="nvim"

PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

### ALIASES ###

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias l.="ls -A | egrep '^\.'"


## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#keyboard
alias give-me-qwerty-us="sudo localectl set-x11-keymap us"

#pacman unlock
alias rmpacmanlock="sudo rm /var/lib/pacman/db.lck"

#which graphical card is working
alias whichvga="/usr/local/bin/arcolinux-which-vga"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd | sort"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'


#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
#grub issue 08/2022
alias install-grub-efi="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi"

#add new fonts
alias update-fc='sudo fc-cache -fv'

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# quickly kill polybar
alias kp='killall polybar'

#hardware info --short
alias hw="hwinfo --short"

#audio check pulseaudio or pipewire
alias audio="pactl info | grep 'Server Name'"

#skip integrity check
alias yayskip='yay -S --mflags --skipinteg'

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

#enabling vmware services
alias start-vmware="sudo systemctl enable --now vmtoolsd.service"
alias vmware-start="sudo systemctl enable --now vmtoolsd.service"
alias sv="sudo systemctl enable --now vmtoolsd.service"

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

#youtube download
#alias yta-aac="yt-dlp --extract-audio --audio-format aac "
#alias yta-best="yt-dlp --extract-audio --audio-format best "
#alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#search content with ripgrep
alias rg="rg --sort path"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#know what you do in these files
alias vpacman="sudo $EDITOR /etc/pacman.conf"
alias vgrub="sudo $EDITOR /etc/default/grub"
alias vconfgrub="sudo $EDITOR /boot/grub/grub.cfg"
alias vmkinitcpio="sudo $EDITOR /etc/mkinitcpio.conf"
alias vmirrorlist="sudo $EDITOR /etc/pacman.d/mirrorlist"
alias vsddm="sudo $EDITOR /etc/sddm.conf"
alias vfstab="sudo $EDITOR /etc/fstab"
alias vnsswitch="sudo $EDITOR /etc/nsswitch.conf"
alias vsamba="sudo $EDITOR /etc/samba/smb.conf"
alias vgnupgconf="sudo $EDITOR /etc/pacman.d/gnupg/gpg.conf"
alias vhosts="sudo $EDITOR /etc/hosts"
alias vhostname="sudo $EDITOR /etc/hostname"
alias vb="$EDITOR ~/.bashrc"
alias vz="$EDITOR ~/.zshrc"
alias vbspwm="nvim ~/.config/bspwm/bspwmrc"
alias vberry="nvim ~/.config/berry/autostart"
alias vsxhkd="nvim ~/.config/sxhkd/sxhkdrc"
alias vpol="nvim ~/.config/polybar/config.ini"

#fixes
alias fix-permissions="sudo chown -R $USER:$USER ~/.config ~/.local"
alias keyfix="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias key-fix="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias keys-fix="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias fixkey="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias fixkeys="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias fix-key="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias fix-keys="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
alias fix-pacman-conf="/usr/local/bin/arcolinux-fix-pacman-conf"
alias fix-pacman-keyserver="/usr/local/bin/arcolinux-fix-pacman-gpg-conf"

#maintenance
alias big="expac -H M '%m\t%n' | sort -h | nl"
alias downgrada="sudo downgrade --ala-url https://ant.seedhost.eu/arcolinux/"

#use unhblock to stop using hblock
alias unhblock="hblock -S none -D none"

#systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"

#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

#give the list of all installed desktops - xsessions desktops
alias xd="ls /usr/share/xsessions | cut -d. -f1"

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


#moving your personal files and folders from /personal to ~
alias personal='cp -Rf /personal/* ~'

#create a file called .bashrc-personal and put all your personal aliases
#in there. They will not be overwritten by skel.

[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal

alias cl="clear"
alias q="exit"
alias so="source ~/.bashrc"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi

# Aliases
alias me='echo $(ifconfig wlp1s0 | grep "inet " | cut -b 9- | cut  -d" " -f2)'
alias e4l="enum4linux -a"
alias h2t="html2text -style pretty"
alias oso=onesixtyone
alias cme=crackmapexec
alias serve="sudo python3 -m http.server 80"
export FZF_DEFAULT_COMMAND='find .'
# Functions

create_scan_directory() {
    NAME=${1:-$(date +%Y%m%d-%T)}
    SCAN_DIRECTORY=$HOME/.scans/$NAME
    mkdir -p "$SCAN_DIRECTORY"
    echo "$SCAN_DIRECTORY"
}
enum_snmp() {
    STRINGS="/usr/share/seclists/Discovery/SNMP/snmp-onesixtyone.txt"
    WORDLIST=${2:-STRINGS}
    NETWORK=${3:-"10.11.1.0"}
    HOSTS=$(mktemp --suffix "-$0-hosts-$(date +%Y%m%d)")
    get_hosts "none" "$NETWORK" > "$HOSTS"
    onesixtyone -i "$HOSTS" -c "$STRINGS"
}
enum_web() {
    IP=${1:-$RHOST}
    PORT=${2:-80}
    # /usr/share/seclists/Discovery/Web_Content/Top1000-RobotsDisallowed.txt
    WORDLIST=${3:-"/usr/share/seclists/Discovery/Web-Content/common.txt"}
    SAVEPATH=$(create_scan_directory "$IP")
    GOBUSTER_OUTPUT="$SAVEPATH"/results_gobuster_$PORT
    NIKTO_OUTPUT="$SAVEPATH"/results_nikto_$PORT
    touch $GOBUSTER_OUTPUT
    touch $NIKTO_OUTPUT
    cd "$SAVEPATH" && whatweb -a 3 "$IP"
    gobuster dir -w "$WORDLIST" -u http://"$IP":"$PORT" -o "$SAVEPATH"/gobuster --output $GOBUSTER_OUTPUT
    nikto -host "$IP" -port "$PORT" -output $NIKTO_OUTPUT -Format txt
}
flush_iptables() {
    echo ""
    echo ">>> Before flush <<<"
    echo "" 
    iptables -L
    iptables -F
    iptables -X
    iptables -t nat -F
    iptables -t nat -X
    iptables -t mangle -F
    iptables -t mangle -X
    iptables -t raw -F
    iptables -t raw -X
    iptables -P INPUT ACCEPT
    iptables -P FORWARD ACCEPT
    iptables -P OUTPUT ACCEPT
    echo ""
    echo ""
    echo ">>> After flush <<<"
    echo "" 
    iptables -L
    echo ""
}
focus() {
    IP=${1:-"EMPTY"}
    PORT=${2:-"EMPTY"}
    [[ "$IP" != "EMPTY" ]] && RHOST="$IP"
    [[ "$PORT" != "EMPTY" ]] && RPORT="$PORT"
    echo -e "\$RHOST: ${RHOST:-"NOT SET"}\n\$RPORT: ${RPORT:-"NOT SET"}\n"
}
get_gateway() {
   INTERFACE=${1:-tap0}
   ip route | grep via | grep "$INTERFACE" | cut -d" " -f3 
}
get_hosts() {
    PORT=${1:-"none"}
    NETWORK=${2:-"10.11.1.0"}
    PATTERN="Nmap scan report for ${NETWORK:0:-1}"
    get_ip() {
        cut -d" " -f5 $1
    }
    if [[ $PORT == "none" ]]; then
        nmap "$NETWORK"/24 -sn | grep "$PATTERN" | get_ip
    else
        nmap "$NETWORK"/24 -p "$PORT" --open | grep "$PATTERN" | get_ip
    fi
}
get_hostnames() {
    DNS=$1
    NETWORK=${2:-"10.11.1.0"}
    PATTERN="Nmap scan report for "
    get_ip() {
        cut -d" " -f5- $1
    }
    if [[ ${#1} -gt 0 ]]; then
        nmap "$NETWORK"/24 --dns-server "$DNS" -sn | grep "$PATTERN" | get_ip
    else
        echo "DNS server address required"
    fi
}
htm() { curl -s "${1:-$RHOST}:${80:-$RPORT}" | html2text -style pretty; }
monitor_traffic() {
    IP=${1:-$RHOST}
    iptables -I INPUT 1 -s "$IP" -j ACCEPT
    iptables -I OUTPUT 1 -d "$IP" -j ACCEPT
    iptables -Z 
}
scan_tcp() {
    IP=${1:-$RHOST}
    INTERFACE=${2:-"tap0"}
    SAVEPATH=$(create_scan_directory "$IP")
    run() {
        masscan "$1" -e "$INTERFACE" --router-ip "$(get_gateway "$INTERFACE")" -p 0-65535 --rate 500 -oL "$SAVEPATH"/ports
    }
    run "$IP"
}
scan_udp() {
    IP=${1:-$RHOST}
    SAVEPATH=$(create_scan_directory "$IP")
    run() {
        nmap -sU -T4 --open --max-retries 1 "$1" -oX "$SAVEPATH"/ports-udp.xml
    }
    run "$IP"
}
sort_ips() {
    IPS=$1
    sort -t . -k 3,3n -k 4,4n "$IPS"
}

# Import colorscheme from 'wal'
cat /home/ghost/.cache/wal/sequences



