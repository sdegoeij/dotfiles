# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b
bindkey "^[[3~"   delete-char
bindkey "^[3;5~"  delete-char

# Arrows
bindkey "^[[C" forward-char
bindkey "^[[D" backward-char

# History substring search.
bindkey '^[[A'    history-substring-search-up          # up arrow
bindkey '^[[B'    history-substring-search-down        # down arrow

# alt-s inserts "sudo " at the start of line:
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo