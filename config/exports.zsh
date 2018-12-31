# put ~/bin on PATH if you have it
test -d "$HOME/bin" &&
    export PATH="$HOME/bin:$PATH"

export TERM="xterm-256color"

# This resolves issues installing gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export CLICOLOR=1
export CDPATH=.:~/Code/

export PATH=/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/X11/bin
export PATH=$PATH:/usr/local/share/npm/bin:$HOME/Developer/SDKs/android-sdk-macosx/tools:$HOME/Developer/SDKs/android-sdk-macosx/platform-tools
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH="$(brew --prefix)/bin:$PATH"
