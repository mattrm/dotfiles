
alias v="vim"
alias sv="sudo vim"
alias s="ssh"
alias sd="sudo"
alias gi="grep -i"
alias l="ls -alh"
alias ll="ls -alh | less"
alias gam="git commit -a -m"
alias gal="git add ."
alias gph="git push"
alias gpl="git pull"
alias glg="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gcm="git checkout master"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gf="git fetch"
alias g="git"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mv='mv -vi'
alias cp='cp -vi'
alias rm="rm -vI"
alias install="sudo apt-get install"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias remove="sudo apt-get remove"
alias purge="sudo apt-get purge"
alias get-sel="sudo dpkg --get-selections | grep -i"
alias ex="exit"
alias off="sudo /sbin/poweroff"
alias dush="du -sh"
alias rcp="rsync --progress -avz"
alias ok="okular"
alias by="byobu"

# SSH
alias sc="ssh cg"

#
## python stuff
#
alias p="python"

# Functions as well
function mcd()
{
	  test -e $1 || mkdir $1; cd $1;
}


# find_larger: find files larger than a certain size (in bytes)
find_larger() { find . -type f -size +${1}c ; }

# extract
extract () {
if [ -f $1 ] ; then
	case $1 in
		*.tar.bz2)   tar xvjf $1    ;;
		*.tar.gz)    tar xvzf $1    ;;
		*.bz2)       bunzip2 $1     ;;
		*.rar)       unrar x $1       ;;
		*.gz)        gunzip $1      ;;
		*.tar)       tar xvf $1    ;;
		*.tbz2)      tar xvjf $1    ;;
		*.tgz)       tar xvzf $1    ;;
		*.zip)       unzip $1       ;;
		*.Z)         uncompress $1  ;;
		*.7z)        7z x $1        ;;
		*)           echo "don't know how to extract '$1'..." ;;
	esac
else
		echo "'$1' is not a valid file!"
	fi
}

#
## History
#
export HISTFILESIZE=20000
export HISTSIZE=10000
setopt sharehistory histappend
setopt SHARE_HISTORY        # Share history across sessions
setopt HIST_IGNORE_SPACE
