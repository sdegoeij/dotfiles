#
# My ZSH config.
#
#


# Source the plugin https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Source the plugin https://github.com/zsh-users/zsh-history-substring-search
source ~/.dotfiles/zsh-history-substring-search/zsh-history-substring-search.zsh

# Load configs.
for config (~/.dotfiles/config/*.zsh) source $config