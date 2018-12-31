# Paths
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Setup editors
export EDITOR=code
export VISUAL=code

# Language
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

# disable core dumps
ulimit -S -c 0

# notify of bg job completion immediately
set -o notify

# fuck that you have new mail shit
unset MAILCHECK