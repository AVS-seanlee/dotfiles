#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------
#   Change Prompt
#   ------------------------------------------------------------

export PS1="\[$(tput bold)\]\[$(tput setaf 7)\] \u @ \h \T \[$(tput setaf 9)\]\! \[$(tput setaf 3)\]\[$(tput sgr0)\] \n   Rock&Roll 👺 💨 🔥  \w : "
export PS2="arbys"

#   ---------------
#   EDITOR
#   ---------------

export EDITOR="subl -w"

#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------

alias rm="/bin/rm -i"
alias ls='ls -al'                           # Preferred 'ls' implementation
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias .2='cd ../../'                        # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit: Opens any file in sublime editor
alias c='clear'                             # c: clear command
alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder
alias chown='sudo chown'                    # chown: Runs chown as sudo
alias chmod='sudo chmod'                    # chmod: Runs chmod as sudo
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias messageon='sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "i wanna be the very best like no one ever was"'
alias messageoff='sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText'


#   ------------------------------------------
#   lr:  Full Recursive Directory Listing
#   ------------------------------------------

alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   ---------------------------------------------------------
#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#   -------------------------
#   PATH/HISTORY
#   -------------------------

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/munki:/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin:$PATH
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend
export HISTIGNORE="&:[ ]*:clear"
export PROMPT_COMMAND='history -a'



