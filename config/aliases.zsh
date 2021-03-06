alias reload="source ~/.zshrc;clr"

# listing files
alias ls='ls -alG'
alias ll='ls -alG'
alias ltr='ls -ltrG'
alias lth='ls -tG|head'
alias lh='ls -SGhl | less'
alias tf='tail -f -n $1'

if $(gls &>/dev/null)
then
  alias ls="gls -alG --color"
  alias ltr="gls -ltrG --color"
  alias lth="gls -tG --color|head"

  eval `gdircolors ~/.dir_colors`
fi

alias path='echo $PATH | tr -s ":" "\n"'

# global aliases
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L='| less'

alias grep='grep --color=auto'
alias ping='ping -c 5'

alias clr='clear;neofetch'

# general shortcuts
alias mv='mv -i'
alias md=mkdir
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='cd .. ; cd ..'
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders

alias todo='grep -ni TODO *'
alias rtodo='grep -niR TODO *'

alias fuck='sudo $(fc -ln -1)'

# History
alias tophist="history | awk '{print $4}' | sort | uniq -c | sort -rn | head"
alias 'h?'='history | grep $1'

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

# ps & other stuff
alias psgr="ps -aef | grep -v grep | grep $1"
alias topmem='ps -eo pmem,pcpu,rss,vsize,args | sort -k 1 | tail -10'  # top 10 memory processes
alias topcpu='ps -eo pmem,pcpu,rss,vsize,args | sort -k 2 | tail -10'  # top 10 cpu processes

alias huh="whatis" # much shorter

# Recursively remove .svn dirs
alias killsvn="find . -name '.svn' -type d -exec rm -rf {} \;"

# File size
alias fs="stat -f \"%z bytes\""

# IP addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# show what ports are open locally
alias local_ports='sudo nmap -sT -O localhost'
alias openports='sudo lsof -n -i4TCP | grep LISTEN'

# GIT
alias gpr='git pull --rebase'
#compdef _git glr=git-pull

alias gs='git status'
#compdef _git gs=git-status

alias gd='git diff'
#compdef _git gd=git-diff

alias gp='git pull'
#compdef _git gp=git-pull

alias gf='git fetch origin'
#compdef __git gf=git-fetch

alias gps='git push'
#compdef _git gps=git-push

alias gpm='git push origin master'
#compdef _git gpm=git-push

alias gc='git commit'
#compdef _git gc=git-commit

alias gco='git checkout'
#compdef _git gco=git-checkout

alias gcod='git checkout develop'
#compdef _git gcod=git-checkout

alias gb='git branch'
#compdef _git gb=git-branch

alias gba='git branch -a'
#compdef _git gba=git-branch

alias gw='git show'
#compdef _git gw=git-show

alias gw^='git show HEAD^'
#compdef _git gw^=git-show

alias gw^^='git show HEAD^^'
#compdef _git gw^^=git-show

alias gl="git log --oneline --graph --decorate --abbrev-commit --date=relative --color=always"
#compdef _git gl=git-log

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"

# 'gitx' was my go-to.
alias gitx='git-cola'

### FUN STARTS HERE ###

# Awesome stuff I never really use but keep because of http://xkcd.com/530/
# Grabbed from https://github.com/mathiasbynens/dotfiles
#alias stfu="osascript -e 'set volume output muted true'"
#alias pumpitup="osascript -e 'set volume 10'"

# Fun stuff
#alias starwars="telnet towel.blinkenlights.nl"