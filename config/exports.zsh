# put ~/bin on PATH if you have it
test -d "$HOME/bin" &&
    export PATH="$HOME/bin:$PATH"

export TERM="xterm-256color"

# This resolves issues installing gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export CLICOLOR=1

export PATH=/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:$HOME/.config/composer/vendor/bin
